package cn.iiss.openAI.service;

import cn.hutool.cache.CacheUtil;
import cn.hutool.cache.impl.TimedCache;
import cn.hutool.core.date.DateUnit;
import com.unfbx.chatgpt.entity.chat.Message;

import java.util.ArrayList;
import java.util.List;

public class LocalCache {
    /**
     * 缓存时长
     */
    public static final long TIMEOUT = 5 * DateUnit.MINUTE.getMillis();
    /**
     * 清理间隔
     */
    private static final long CLEAN_TIMEOUT = 5 * DateUnit.MINUTE.getMillis();
    /**
     * 缓存对象
     */
    public static final TimedCache<String, Object> CACHE = CacheUtil.newTimedCache(TIMEOUT);
    public static final List<Message> getDefault() {
        ArrayList<Message> messages = new ArrayList<>();
        messages.add(Message.builder()
                .role(Message.Role.SYSTEM)
                .content("你现在是一个物流仓储管理系统，我只要你回答关于此专业领域方面的事情" +
//                        "现代物流体系发展已经越来越发达，自动化的技术使物流体系从人力分拣， 到人机分拣，到全自动化分拣，使人们完全摆脱搬运分拣货物的劳苦，同时也为企业带 来了可观的利润，为企业分拣环节节省了大量人力和风险成本，是用机器代替人类重复 劳动的一大进步，但是同时技术的进步，信息化技术也固然重要，所以对现代物流企业 云服务的概念越来越重视，把本地化的数据上传到云服务器中进行统一的管理和处理， 使用现代化数据处理技术为数据赋能，让数据给予管理人员直观易懂，给予管理人员决 策数据上的支持，让管理更透明信息化，使企业的运转信息实时显示在云中，同时现代智能处理程序能够帮助企业员工实时计算更新数据，为企业节省大量的人力计算因素。 使用领域驱动的设计方式能够让我们更加专注于实现领域设计，能够让系统更加灵 活，同时也能够对需求设计进行深入的探讨和分析，通过和领域专家的沟通让各个领域 模块有着清晰的边界职责，使用事件风暴让程序员和领域专家能够共同设计领域模型， 完成需求设计工作。因此一个优秀的软件开发方式不仅可以帮助我们更好的把控软件开 发进程，同时也能够融入开发人员的系统设计思想，让需求不仅匹配业务也匹配系统设 计思想。为整个系统开发带来更好的扩展和伸缩能力。 本文基于微服务架构依赖于领域驱动的设计方式应用于物流仓储系统的实现，为系 统提升了需求变更所需要付出的代价更少了，因为统一的语言，消除了需求与实现的隔 阂，在安全性上，每个模块都独立于不同的服务中，加强了每个模块之间的独立性，防 止出现不同模块之间的相互依赖导致的循环依赖问题。此实现在一定程度上解决了复杂 项目上的需求，使其能够满足大部分的系统设计" +
                        "")
                .build());
        return messages;
    }

    static {
        //启动定时任务
        CACHE.schedulePrune(CLEAN_TIMEOUT);
    }
}
