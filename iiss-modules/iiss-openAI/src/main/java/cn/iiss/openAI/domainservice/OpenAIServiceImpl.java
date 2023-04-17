package cn.iiss.openAI.domainservice;

import cn.iiss.common.security.utils.SecurityUtils;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.openAI.OpenAiUserInfo;
import cn.iiss.openAI.face.factory.OpenAICreate;
import cn.iiss.openAI.mapper.OpenAIMapper;
import cn.iiss.openAI.mapper.OpenAIUserInfoMapper;
import cn.iiss.openAI.response.OpenAiResponse;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class OpenAIServiceImpl extends ServiceImpl<OpenAIUserInfoMapper, OpenAiUserInfo> implements IOpenAIService {
    private final OpenAIUserInfoMapper openAIUserInfoMapper;

    @Override
    public String getChat(String content) {
        //记录问题
        List<OpenAiUserInfo> openAiUserInfos = List.of(new OpenAiUserInfo(SecurityUtils.getUserId(), true, content));
        OpenAICreate.getChat(x -> x.addUserMessages(content)).post().successHook(x -> {
            openAiUserInfos.add(new OpenAiUserInfo(SecurityUtils.getUserId(), false, x.getChoices().get(0).getMessage().getContent()));
        }).errorHook(x->{
            throw new BusinessException(CodeEnum.Fail);
        }).execute();
        boolean x = saveBatch(openAiUserInfos);
        return "";
    }

    public List<OpenAiResponse> getUserInfo() {
        Long userId = SecurityUtils.getUserId();
        return openAIUserInfoMapper.selectList(new LambdaQueryWrapper<OpenAiUserInfo>().eq(OpenAiUserInfo::getUserId, userId).orderByAsc(OpenAiUserInfo::getCreatedAt)).stream().map(x -> OpenAIMapper.INSTANCE.Entity2Response(x)).toList();
    }
}
