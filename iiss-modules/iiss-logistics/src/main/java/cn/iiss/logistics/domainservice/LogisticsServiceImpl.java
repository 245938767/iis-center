package cn.iiss.logistics.domainservice;

import cn.iiss.common.core.constant.HttpStatus;
import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.flowNo.face.service.IFlowNoFacade;
import cn.iiss.logistics.LogisticsInfo;
import cn.iiss.logistics.LogisticsStatus;
import cn.iiss.logistics.mapper.LogisticsMapper;
import cn.iiss.logistics.mappers.LogisticsMapperd;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import cn.iiss.logistics.request.LogisticsUpdateRequest;
import cn.iiss.logistics.response.LogisticsDetailResponse;
import cn.iiss.product.face.ProductService;
import cn.iiss.product.face.model.Product;
import cn.iiss.trade.face.TradeService;
import cn.iiss.trade.face.model.OrderItemModel;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.trade.face.response.OrderBaseResponse;
import cn.iiss.warehouse.face.WarehouseService;
import cn.iiss.warehouse.face.model.WarehouseAssetBizType;
import cn.iiss.warehouse.face.request.AssetProductRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import cn.iiss.warehouse.face.response.AssetResponse;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.PageInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
@Transactional
public class LogisticsServiceImpl extends ServiceImpl<LogisticsMapper, LogisticsInfo> implements ILogisticsService {
    private final IFlowNoFacade flowNoFacade;
    private final ProductService productService;
    private final TradeService tradeService;
    private final WarehouseService warehouseService;

    @Override
    public boolean createBase(LogisticsCreateRequest logisticsCreateRequest) {
        Long flowNo = flowNoFacade.getNextId();
        R<String> consignee = warehouseService.warehouseGetById(logisticsCreateRequest.getConsigneeWarehouseId());
        R<String> ship = warehouseService.warehouseGetById(logisticsCreateRequest.getShipWarehouseId());
        if (!(R.isSuccess(consignee) || R.isSuccess(ship))) {
            throw new BusinessException(CodeEnum.Fail);
        }
        //获得商品数据
        Stream<Product> productStream = logisticsCreateRequest.getLogisticsProductRequests().stream().map(x -> {
            R<Product> byId = productService.getById(x.getProductId());
            if (byId.getCode() != 200) {
                throw new BusinessException(CodeEnum.Fail);
            }
            return byId.getData();
        });
        //根据仓库ID进行转仓
        AssetTranslationRequest build = AssetTranslationRequest.builder()
                .assetProductRequestList(productStream.map(x -> AssetProductRequest.builder()
                        .productId(x.getId())
                        .productImg(x.getProductImg())
                        .productNum(Long.valueOf(logisticsCreateRequest.getLogisticsProductRequests().stream().filter(f -> Objects.equals(f.getProductId(), x.getId())).findFirst().get().getProductNum()))
                        .warehouseAssetBizType(WarehouseAssetBizType.PRODUCT_SALES)
                        .tax(BigDecimal.ZERO)
                        .taxRate(0d)
                        .price(BigDecimal.ZERO)
                        .amount(BigDecimal.ZERO)
                        .productSpecification(x.getProductSpecification())
                        .build()).toList())
                .batchNo(flowNo.toString())
                .translationWarehouseId(logisticsCreateRequest.getConsigneeWarehouseId())
                .warehouseId(logisticsCreateRequest.getShipWarehouseId())
                .build();
        JsonObject<Long> translation = warehouseService.assetTranslation(build);

        if (!(translation.isSuccess())) {
            throw new BusinessException(CodeEnum.Fail);
        }
        //创建订单
        OrderItemModel orderItem = OrderItemModel.builder().itemCount(1).feeRemark("物流转仓费用").skuId(1L).itemCount(1).realAmount(logisticsCreateRequest.getFreight()).productName("物流转仓").build();
        ArrayList<OrderItemModel> objects = new ArrayList<>();
        objects.add(orderItem);
        OrderBaseCreateRequest builder = OrderBaseCreateRequest.builder()
                .orderType(4)
                .userId(SecurityUtils.getUserId())
                .orderItemModelList(objects)
                .attrs(List.of())
                .totalAmount(logisticsCreateRequest.getFreight())
                .realAmount(logisticsCreateRequest.getFreight())
                .build();
        JsonObject<Long> orderBase = tradeService.createOrderBase(builder);
        if (!(orderBase.isSuccess())) {
            throw new BusinessException(CodeEnum.Fail);
        }
        LogisticsInfo logisticsInfo = new LogisticsInfo();
        logisticsInfo.init(flowNo,
                LogisticsStatus.DELIVERY,
                logisticsCreateRequest.getFreight(),
                logisticsCreateRequest.getShipWarehouseId(),
                logisticsCreateRequest.getConsigneeWarehouseId(),
                orderBase.getResult(),
                translation.getResult(),
                ship.getData(),
                consignee.getData(),
                logisticsCreateRequest.getLogisticsProductRequests()
        );

        return save(logisticsInfo);
    }

    @Override
    public boolean complete(LogisticsUpdateRequest logisticsUpdateRequest) {
        Long flowNo = logisticsUpdateRequest.getFlowNo();
        LogisticsInfo one = getOne(new LambdaQueryWrapper<LogisticsInfo>().eq(LogisticsInfo::getFlowNo, flowNo));
//        JsonObject jsonObject = tradeService.orderComplete(flowNo);
//        if (jsonObject.isSuccess()) {
            one.complete();
            return updateById(one);
//        }
//        return false;
    }

    @Override
    public boolean completeOk(LogisticsUpdateRequest logisticsUpdateRequest) {
        Long flowNo = logisticsUpdateRequest.getFlowNo();
        LogisticsInfo one = getOne(new LambdaQueryWrapper<LogisticsInfo>().eq(LogisticsInfo::getFlowNo, flowNo));
        one.completeOk();
        return updateById(one);
    }

    @Override
    public TableDataInfo getPageList() {
        List<LogisticsInfo> list = list();

        TableDataInfo rspData = new TableDataInfo();
        rspData.setCode(HttpStatus.SUCCESS);
        rspData.setRows(list.stream().map(LogisticsMapperd.INSTANCE::Entity2Response).toList());
        rspData.setMsg("查询成功");
        rspData.setTotal(new PageInfo(list).getTotal());
        return rspData;
    }

    @Override
    public LogisticsDetailResponse getLogisticsDetail(Long id) {
        LogisticsInfo byId = getById(id);
        LogisticsDetailResponse logisticsDetailResponse = LogisticsMapperd.INSTANCE.Entity2Detail(byId);
        JsonObject<List<AssetResponse>> assetGetByBatchNo = warehouseService.assetGetByBatchNo(byId.getFlowNo().toString());
        JsonObject<OrderBaseResponse> order = tradeService.findById(byId.getOrderId());
        if (!(assetGetByBatchNo.isSuccess() && order.isSuccess())) {
            throw new BusinessException(CodeEnum.Fail, "获取数据失败");
        }
        logisticsDetailResponse.initOtherInformation(assetGetByBatchNo.getResult(), order.getResult());
        return logisticsDetailResponse;

    }
}
