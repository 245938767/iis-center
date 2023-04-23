package cn.iiss.logistics.domainservice;

import cn.iiss.common.core.domain.R;
import cn.iiss.common.core.web.domain.AjaxResult;
import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.commons.model.JsonObject;
import cn.iiss.flowNo.face.service.IFlowNoFacade;
import cn.iiss.logistics.LogisticsInfo;
import cn.iiss.logistics.LogisticsStatus;
import cn.iiss.logistics.mapper.LogisticsMapper;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import cn.iiss.logistics.request.LogisticsUpdateRequest;
import cn.iiss.product.face.ProductService;
import cn.iiss.product.face.model.Product;
import cn.iiss.trade.face.TradeService;
import cn.iiss.trade.face.model.OrderItemModel;
import cn.iiss.trade.face.request.OrderBaseCreateRequest;
import cn.iiss.warehouse.face.WarehouseService;
import cn.iiss.warehouse.face.model.WarehouseAssetBizType;
import cn.iiss.warehouse.face.request.AssetProductRequest;
import cn.iiss.warehouse.face.request.AssetTranslationRequest;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
@Transactional
public class LogisticsServiceImpl extends ServiceImpl<LogisticsMapper, LogisticsInfo> implements ILogisticsService {
    private final LogisticsMapper logisticsMapper;
    private final WarehouseService warehouseService;
    private final TradeService tradeService;
    private final ProductService productService;
    private final IFlowNoFacade flowNoFacade;

    @Override
    public boolean createBase(LogisticsCreateRequest logisticsCreateRequest) {
        //获得商品数据
        Stream<Product> productStream = logisticsCreateRequest.getLogisicsProductRequests().stream().map(x -> {
            R<Product> byId = productService.getById(x.getProductId());
            return byId.getData();
        });
        //创建订单
        OrderBaseCreateRequest builder = OrderBaseCreateRequest.builder()
                .orderType(4)
                .userId(SecurityUtils.getUserId())
                .orderItemModelList(List.of(OrderItemModel.builder().itemCount(1).feeRemark("物流转仓费用").skuId(1L).itemCount(1).realAmount(logisticsCreateRequest.getFreight()).productName("物流转仓").build()))
                .attrs(List.of())
                .totalAmount(logisticsCreateRequest.getFreight())
                .realAmount(logisticsCreateRequest.getFreight())
                .build();
        JsonObject<Long> orderBase = tradeService.createOrderBase(builder);
        //根据仓库ID进行转仓
        AssetTranslationRequest build = AssetTranslationRequest.builder()
                .assetProductRequestList(productStream.map(x -> AssetProductRequest.builder()
                        .productId(x.getId())
                        .productImg(x.getProductImg())
                        .productNum(logisticsCreateRequest.getLogisicsProductRequests().stream().filter(f -> f.getProductId() == x.getId()).findFirst().get().getProductId())
                        .warehouseAssetBizType(WarehouseAssetBizType.PRODUCT_SALES)
                        .tax(BigDecimal.ZERO)
                        .taxRate(0d)
                        .price(BigDecimal.ZERO)
                        .amount(BigDecimal.ZERO)
                        .productSpecification(x.getProductSpecification())
                        .build()).toList())
                .batchNo(flowNoFacade.getNextId().toString())
                .translationWarehouseId(logisticsCreateRequest.getShipWarehouseId())
                .warehouseId(logisticsCreateRequest.getConsigneeWarehouseId())
                .build();
        Long ajaxResult = warehouseService.assetTranslation(build).getResult();
        LogisticsInfo logisticsInfo = new LogisticsInfo();
        logisticsInfo.init(flowNoFacade.getNextId(),LogisticsStatus.DELIVERY,logisticsCreateRequest.getFreight(),logisticsCreateRequest.getShipWarehouseId(),logisticsCreateRequest.getConsigneeWarehouseId(),orderBase.getResult(),ajaxResult);
        boolean save = save(logisticsInfo);
        return true;
    }

    @Override
    public boolean complete(LogisticsUpdateRequest logisticsUpdateRequest) {
        return false;
    }
}
