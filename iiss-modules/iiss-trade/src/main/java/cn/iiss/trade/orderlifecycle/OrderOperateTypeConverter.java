package cn.iiss.trade.orderlifecycle;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author gim
 */

@MappedTypes({OrderOperateType.class})
@MappedJdbcTypes({JdbcType.INTEGER})
public class OrderOperateTypeConverter extends BaseTypeHandler<OrderOperateType> {


  @Override
  public void setNonNullParameter(PreparedStatement preparedStatement, int i, OrderOperateType orderOperateType, JdbcType jdbcType) throws SQLException {

    if (jdbcType == null) {
      preparedStatement.setInt(i, orderOperateType.getCode());
    } else {
      preparedStatement.setObject(i, orderOperateType.getCode(), jdbcType.TYPE_CODE);
    }
  }

  @Override
  public OrderOperateType getNullableResult(ResultSet resultSet, String s) throws SQLException {
    return OrderOperateType.of(resultSet.getInt(s)).orElse(null);
  }

  @Override
  public OrderOperateType getNullableResult(ResultSet resultSet, int i) throws SQLException {
    return OrderOperateType.of(resultSet.getInt(i)).orElse(null);
  }

  @Override
  public OrderOperateType getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
    return OrderOperateType.of(callableStatement.getInt(i)).orElse(null);
  }
}
