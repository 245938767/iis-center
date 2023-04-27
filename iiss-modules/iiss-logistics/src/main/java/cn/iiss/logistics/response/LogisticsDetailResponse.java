package cn.iiss.logistics.response;

import cn.hutool.core.date.DateUtil;
import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.common.core.utils.DateUtils;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.model.AbstractMybatisResponse;
import cn.iiss.logistics.LogisticsConverter;
import cn.iiss.logistics.LogisticsStatus;
import cn.iiss.mybatis.converter.InstantLongConverter;
import cn.iiss.trade.face.response.OrderBaseResponse;
import cn.iiss.warehouse.face.response.AssetResponse;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LogisticsDetailResponse extends AbstractMybatisResponse {

    @FieldDesc(name = "唯一流水号")
    private String flowNo;

    @FieldDesc(name = "状态")
    @TableField(typeHandler = LogisticsConverter.class)
    private LogisticsStatus logisticsStatus;

    @FieldDesc(name = "到达时间")
    @TableField(typeHandler = InstantLongConverter.class)
    private Instant arriveTime;

    @FieldDesc(name = "费用")
    private BigDecimal freight;
    @FieldDesc(name = "订单ID")
    private String orderId;

    private String assetId;

    @FieldDesc(name = "发货仓")
    private Long shipWarehouseId;
    @FieldDesc(name = "发货仓名称")
    private String shipWarehouseName;

    @FieldDesc(name = "收货仓")
    private Long consigneeWarehouseId;
    @FieldDesc(name = "收货仓名称")
    private String consigneeWarehouseName;
    @FieldDesc(name = "商品信息")
    private List<CodeValue> products;
    @FieldDesc(name = "货运信息信息")
    private List<AssetResponse> assetResponseList;
    @FieldDesc(name = "订单信息")
    private OrderBaseResponse orderBaseResponse;
    @FieldDesc(name = "当前状态信息")
    private List<LogisticsStatusStep> codeValueStatus;


    public void initOtherInformation(List<AssetResponse> assetResponseList, OrderBaseResponse orderBaseResponse) {
        this.assetResponseList = assetResponseList;
        this.orderBaseResponse = orderBaseResponse;
        //解析status
        List<LogisticsStatusStep> of = new ArrayList<>();
        LogisticsStatus[] enumConstants = logisticsStatus.getClass().getEnumConstants();
        for (LogisticsStatus enumConstant : enumConstants) {
            boolean current = enumConstant.getCode().equals(logisticsStatus.getCode());
            LogisticsStatusStep build = LogisticsStatusStep.builder()
                    .current(current)
                    .title(enumConstant.getName())
                    .status(enumConstant.getCode())
                    .dateTime(DateUtil.date(current ? getUpdatedAt() : getCreatedAt()))
                    .description("")
                    .build();
            of.add(build);
        }
        this.codeValueStatus = of;
    }
}
