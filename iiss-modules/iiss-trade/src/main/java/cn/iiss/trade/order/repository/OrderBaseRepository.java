package cn.iiss.trade.order.repository;

import cn.iiss.trade.order.OrderBase;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderBaseRepository extends BaseMapper<OrderBase> {
}
