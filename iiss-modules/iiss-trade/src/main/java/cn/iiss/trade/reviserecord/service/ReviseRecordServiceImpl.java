package cn.iiss.trade.reviserecord.service;

import cn.iiss.common.core.constant.HttpStatus;
import cn.iiss.common.core.web.page.TableDataInfo;
import cn.iiss.commons.constants.CodeEnum;
import cn.iiss.commons.exception.BusinessException;
import cn.iiss.mybatis.support.EntityOperations;
import cn.iiss.trade.reviserecord.ReviseRecord;
import cn.iiss.trade.reviserecord.dto.ReviseRecordCreator;
import cn.iiss.trade.reviserecord.dto.ReviseRecordQuery;
import cn.iiss.trade.reviserecord.dto.ReviseRecordUpdater;
import cn.iiss.trade.reviserecord.dto.ReviseRecordVO;
import cn.iiss.trade.reviserecord.mapper.ReviseRecordMapper;
import cn.iiss.trade.reviserecord.repository.ReviseRecordRepository;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.github.pagehelper.PageInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
@Slf4j
@RequiredArgsConstructor
public class ReviseRecordServiceImpl implements IReviseRecordService {
    private final ReviseRecordRepository reviseRecordRepository;

    /**
     * createImpl
     */
    @Override
    public Long createReviseRecord(ReviseRecordCreator creator) {
        Optional<ReviseRecord> reviseRecord = EntityOperations.doCreate(reviseRecordRepository)
                .create(() -> ReviseRecordMapper.INSTANCE.dtoToEntity(creator))
                .update(ReviseRecord::init)
                .execute();
        return reviseRecord.isPresent() ? reviseRecord.get().getId() : 0;
    }

    /**
     * update
     */
    @Override
    public void updateReviseRecord(ReviseRecordUpdater updater) {
        EntityOperations.doUpdate(reviseRecordRepository)
                .loadById(updater.getId())
                .update(updater::updateReviseRecord)
                .execute();
    }

    /**
     * valid
     */
    @Override
    public void validReviseRecord(Long id) {
        EntityOperations.doUpdate(reviseRecordRepository)
                .loadById(id)
                .update(ReviseRecord::valid)
                .execute();
    }

    /**
     * invalid
     */
    @Override
    public void invalidReviseRecord(Long id) {
        EntityOperations.doUpdate(reviseRecordRepository)
                .loadById(id)
                .update(ReviseRecord::invalid)
                .execute();
    }

    /**
     * findById
     */
    @Override
    public ReviseRecordVO findById(Long id) {
        Optional<ReviseRecord> reviseRecord = Optional.of(reviseRecordRepository.selectById(id));
        return new ReviseRecordVO(reviseRecord.orElseThrow(() -> new BusinessException(CodeEnum.NotFindError)));
    }

    /**
     * findByPage
     */
    @Override
    public TableDataInfo findByPage(ReviseRecordQuery query) {

        LambdaQueryWrapper<ReviseRecord> reviseRecordLambdaQueryWrapper = new LambdaQueryWrapper<ReviseRecord>().orderByDesc(ReviseRecord::getCreatedAt);

        List<ReviseRecord> orderBases = reviseRecordRepository.selectList(reviseRecordLambdaQueryWrapper);

        TableDataInfo rspData = new TableDataInfo();
        rspData.setCode(HttpStatus.SUCCESS);
        rspData.setRows(orderBases);
        rspData.setMsg("查询成功");
        rspData.setTotal(new PageInfo(orderBases).getTotal());
        return rspData;
    }
}
