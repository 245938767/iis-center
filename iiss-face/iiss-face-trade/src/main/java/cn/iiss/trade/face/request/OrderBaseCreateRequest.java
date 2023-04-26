package cn.iiss.trade.face.request;

import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.model.Request;
import cn.iiss.trade.face.model.OrderItemModel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderBaseCreateRequest implements Request, Serializable {

    @FieldDesc(
            name = "订单金额"
    )
    private BigDecimal totalAmount;

    @FieldDesc(
            name = "真实金额"
    )
    private BigDecimal realAmount;

    @FieldDesc(
            name = "用户id"
    )
    private Long userId;

    @FieldDesc(
            name = "订单类型、订单类型创建不同的状态机"
    )
    private Integer orderType;

    @FieldDesc(
            name = "订单信息"
    )
    private List<CodeValue> attrs;

    private List<OrderItemModel> orderItemModelList;

}
