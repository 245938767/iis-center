package cn.iiss.logistics.domainservice;

import cn.iiss.logistics.LogisticsInfo;
import cn.iiss.logistics.mapper.LogisticsMapper;
import cn.iiss.logistics.request.LogisticsCreateRequest;
import cn.iiss.logistics.request.LogisticsUpdateRequest;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LogisticsServiceImpl extends ServiceImpl<LogisticsMapper, LogisticsInfo> implements ILogisticsService {
    private final LogisticsMapper logisticsMapper;

    @Override
    public boolean createBase(LogisticsCreateRequest logisticsCreateRequest) {
        return false;
    }

    @Override
    public boolean complete(LogisticsUpdateRequest logisticsUpdateRequest) {
        return false;
    }
}
