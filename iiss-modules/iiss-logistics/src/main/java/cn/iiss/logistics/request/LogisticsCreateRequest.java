package cn.iiss.logistics.request;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.model.Request;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class LogisticsCreateRequest implements Request {
    @Schema(name = "订单流水号")
    private Long flowNo;
    @Schema(name = "发货仓")
    private Long shipWarehouseId;

    @Schema(name = "收货仓")
    private Long consigneeWarehouseId;

    @Schema(name = "费用")
    private BigDecimal freight;
}
