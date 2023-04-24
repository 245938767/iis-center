package cn.iiss.logistics.mapper;

import cn.iiss.logistics.LogisticsStatus;


public class LogisticsMappers {
    public LogisticsMappers() {
    }

    public String asString(LogisticsStatus date) {
        return date.getName();
    }

}
