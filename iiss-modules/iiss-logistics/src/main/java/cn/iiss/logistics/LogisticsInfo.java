package cn.iiss.logistics;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.mybatis.converter.InstantLongConverter;
import cn.iiss.mybatis.support.BaseMybatisAggregate;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;
import java.time.Instant;

@EqualsAndHashCode(callSuper = false)
@TableName(autoResultMap = true)
@Data
public class LogisticsInfo extends BaseMybatisAggregate {
    @FieldDesc(name = "唯一流水号")
    private Long flowNo;

    @FieldDesc(name = "状态")
    @TableField(typeHandler = LogisticsConverter.class)
    private LogisticsStatus logisticsStatus;

    @FieldDesc(name = "到达时间")
    @TableField(typeHandler = InstantLongConverter.class)
    private Instant arriveTime;

    @FieldDesc(name = "费用")
    private BigDecimal freight;
    @FieldDesc(name = "订单ID")
    private Long orderId;

    private Long assetId;

    @FieldDesc(name = "发货仓")
    private Long shipWarehouseId;

    @FieldDesc(name = "收货仓")
    private Long consigneeWarehouseId;

    public void init(Long flowNo, LogisticsStatus logisticsStatus, BigDecimal freight, Long shipWarehouseId, Long consigneeWarehouseId, Long orderId, Long assetId
    ) {
        this.assetId = assetId;
        this.flowNo = flowNo;
        this.logisticsStatus = logisticsStatus;
        this.freight = freight;
        this.orderId = orderId;
        this.shipWarehouseId = shipWarehouseId;
        this.consigneeWarehouseId = consigneeWarehouseId;
    }
}
