package cn.iiss.trade.order;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 */

@MappedTypes({OrderState.class})
@MappedJdbcTypes(JdbcType.INTEGER)
public class OrderStateConverter extends BaseTypeHandler<OrderState> {

    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, OrderState orderState, JdbcType jdbcType) throws SQLException {
        if (jdbcType == null) {
            preparedStatement.setInt(i, orderState.getCode());
        } else {
            preparedStatement.setObject(i, orderState.getCode(), jdbcType.TYPE_CODE);
        }
    }

    @Override
    public OrderState getNullableResult(ResultSet resultSet, String s) throws SQLException {
        return OrderState.of(resultSet.getInt(s)).orElse(null);
    }

    @Override
    public OrderState getNullableResult(ResultSet resultSet, int i) throws SQLException {
        return OrderState.of(resultSet.getInt(i)).orElse(null);
    }

    @Override
    public OrderState getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        return OrderState.of(callableStatement.getInt(i)).orElse(null);
    }
}
