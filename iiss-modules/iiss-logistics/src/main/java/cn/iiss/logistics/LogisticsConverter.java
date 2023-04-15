package cn.iiss.logistics;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@MappedJdbcTypes(JdbcType.INTEGER)
@MappedTypes(LogisticsStatus.class)
public class LogisticsConverter extends BaseTypeHandler<LogisticsStatus> {
    @Override
    public void setNonNullParameter(PreparedStatement preparedStatement, int i, LogisticsStatus logisticsStatus, JdbcType jdbcType) throws SQLException {
        preparedStatement.setInt(i, logisticsStatus.getCode());
    }

    @Override
    public LogisticsStatus getNullableResult(ResultSet resultSet, String s) throws SQLException {
        return LogisticsStatus.of(resultSet.getInt(s)).orElse(LogisticsStatus.WAIT_);
    }

    @Override
    public LogisticsStatus getNullableResult(ResultSet resultSet, int i) throws SQLException {
        return LogisticsStatus.of(resultSet.getInt(i)).orElse(LogisticsStatus.WAIT_);
    }

    @Override
    public LogisticsStatus getNullableResult(CallableStatement callableStatement, int i) throws SQLException {
        return LogisticsStatus.of(callableStatement.getInt(i)).orElse(LogisticsStatus.WAIT_);
    }
}
