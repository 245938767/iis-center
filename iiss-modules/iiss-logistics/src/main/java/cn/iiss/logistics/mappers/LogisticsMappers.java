package cn.iiss.logistics.mappers;

import cn.iiss.logistics.LogisticsStatus;


public class LogisticsMappers {
    public LogisticsMappers() {
    }

    public String asString(LogisticsStatus date) {
        return date.getName();
    }

}
