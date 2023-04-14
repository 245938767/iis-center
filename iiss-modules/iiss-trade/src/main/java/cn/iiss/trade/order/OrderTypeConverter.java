package cn.iiss.trade.order;

/**
 *
 */

import cn.iiss.trade.order.domainservice.model.OrderType;
import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@MappedTypes({OrderType.class})
@MappedJdbcTypes(JdbcType.INTEGER)
public class OrderTypeConverter extends BaseTypeHandler<OrderType> {

    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, OrderType orderType, JdbcType jdbcType) throws SQLException {
        if (jdbcType == null) {
            preparedStatement.setInt(i, orderType.getCode());
        } else {
            preparedStatement.setObject(i, orderType.getCode(), jdbcType.TYPE_CODE);
        }
    }

    @Override
    public OrderType getNullableResult(ResultSet resultSet, String s) throws SQLException {
        return OrderType.of(resultSet.getInt(s)).orElse(null);
    }

    @Override
    public OrderType getNullableResult(ResultSet resultSet, int i) throws SQLException {
        return OrderType.of(resultSet.getInt(i)).orElse(null);
    }

    @Override
    public OrderType getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        return OrderType.of(callableStatement.getInt(i)).orElse(null);
    }
}
