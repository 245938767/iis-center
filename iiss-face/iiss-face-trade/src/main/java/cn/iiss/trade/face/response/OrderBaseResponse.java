package cn.iiss.trade.face.response;

import cn.iiss.common.core.domain.CodeValue;
import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.commons.model.AbstractMybatisResponse;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderBaseResponse extends AbstractMybatisResponse {
    @FieldDesc(name = "唯一流水号")
    private String flowNo;

    @FieldDesc(name = "订单金额")
    private BigDecimal totalAmount;

    @FieldDesc(name = "账号Id")
    private Long accountId;


    @FieldDesc(name = "订单类型、订单类型创建不同的状态机")
    private Integer orderType;

    @FieldDesc(name = "支付详情")
    private String payInfo;

    @FieldDesc(name = "待支付金额")
    private BigDecimal waitPay;

    @FieldDesc(name = "支付时间")
    private Long payTime;

    @FieldDesc(name = "订单状态")
    private Integer orderState;

    private ValidStatus validStatus;

    /**
     * 系统压力不大的时候可以这里放，压力大千万不要放这里，额外的表或者es都可以
     */
    @FieldDesc(name = "订单信息")
    private List<CodeValue> attrs;

    @FieldDesc(name = "是否开票")
    private ValidStatus invoiceFlag;

}
