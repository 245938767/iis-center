package cn.iiss.flowNo.face.service;

import cn.hutool.core.util.IdUtil;
import org.springframework.stereotype.Service;

@Service
public class FlowNoFacadeImpl implements IFlowNoFacade{
  @Override
  public Long getNextId() {
    return IdUtil.getSnowflake().nextId();
  }
}
