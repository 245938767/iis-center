package cn.iiss.trade.order.dto;

import lombok.Data;


@Data
public class OrderBaseQuery {

    private Long userId;

    private Integer orderType;
}
