package cn.iiss.openAI.domainservice;

import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.openAI.OpenAIUserInfo;
import cn.iiss.openAI.face.factory.OpenAICreate;
import cn.iiss.openAI.mapper.OpenAIUserInfoMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OpenAIServiceImpl extends ServiceImpl<OpenAIUserInfoMapper, OpenAIUserInfo> implements IOpenAIService {
    private final OpenAIUserInfoMapper openAIUserInfoMapper;

    @Override
    public String getChat(String content) {
        //记录问题
        List<OpenAIUserInfo> openAIUserInfos = List.of(new OpenAIUserInfo(SecurityUtils.getUserId(), true, content));
        OpenAICreate.getChat(x -> x.addUserMessages(content)).post().successHook(x -> {
            openAIUserInfos.add(new OpenAIUserInfo(SecurityUtils.getUserId(), false, x.getChoices().get(0).getMessage().getContent()));
        }).execute();
        boolean x = saveBatch(openAIUserInfos);
        return "";
    }

    public List<OpenAIUserInfo> getUserInfo() {
        Long userId = SecurityUtils.getUserId();
        return openAIUserInfoMapper.selectList(new LambdaQueryWrapper<OpenAIUserInfo>().eq(OpenAIUserInfo::getUserId, userId).orderByDesc(OpenAIUserInfo::getCreatedAt));
    }
}
