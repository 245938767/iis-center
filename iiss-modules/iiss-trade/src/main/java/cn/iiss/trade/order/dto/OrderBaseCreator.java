package cn.iiss.trade.order.dto;

import cn.iiss.common.core.domain.CodeValue;
import io.swagger.v3.oas.annotations.media.Schema;
import cn.iiss.trade.order.domainservice.model.OrderItemModel;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class OrderBaseCreator {
    @Schema(
            title = "唯一流水号"
    )
    private Long flowNo;

    @Schema(
            title = "订单金额"
    )
    private BigDecimal totalAmount;

    @Schema(
            title = "真实金额"
    )
    private BigDecimal realAmount;


    @Schema(
            title = "订单类型、订单类型创建不同的状态机"
    )
    private Integer orderType;

    @Schema(
            title = "订单信息"
    )
    private List<CodeValue> attrs;
    @Schema(
            title = "订单项信息"
    )
    private List<OrderItemModel> orderItemModelList;


}
