package cn.iiss.logistics.mappers;

import cn.iiss.logistics.LogisticsStatus;


public class LogisticsMappers {
    public LogisticsMappers() {
    }

    public String asString(LogisticsStatus date) {
        return date.getName();
    }

    public String LongAsString(Long id) {
        return id.toString();
    }

}
