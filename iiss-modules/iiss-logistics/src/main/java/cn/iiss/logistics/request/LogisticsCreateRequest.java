package cn.iiss.logistics.request;

import cn.iiss.commons.model.Request;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class LogisticsCreateRequest implements Request {
    @Schema(name = "发货仓")
    private Long shipWarehouseId;

    @Schema(name = "收货仓")
    private Long consigneeWarehouseId;

    @Schema(name = "费用")
    private BigDecimal freight;
    List<LogisicsProductRequest> logisticsProductRequests;
}
