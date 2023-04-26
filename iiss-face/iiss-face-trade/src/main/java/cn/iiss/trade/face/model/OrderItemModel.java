package cn.iiss.trade.face.model;

import cn.iiss.commons.annotation.FieldDesc;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OrderItemModel implements Serializable {

  @FieldDesc(name = "真实金额")
  private BigDecimal realAmount;

  @FieldDesc(name = "计量数量")
  private Integer itemCount;

  @FieldDesc(name = "skuId")
  private Long skuId;

  @FieldDesc(name = "商品名称")
  private String productName;

  @FieldDesc(name = "费用描述")
  private String feeRemark;

}
