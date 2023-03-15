package cn.iiss.warehouse.warehouseasset.service;

import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.mapper.WarehouseMapper;
import cn.iiss.warehouse.warehouseasset.WarehouseAssetDTO;
import cn.iiss.warehouse.warehouseasset.events.WarehouseAssetEvents;
import cn.iiss.warehouse.warehouseasset.request.WarehouseAssetRequest;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.mybatis.support.EntityOperations;
import cn.iiss.warehouse.warehouseasset.WarehouseAsset;
import cn.iiss.warehouse.warehouseasset.mapper.WarehouseAssetMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.concurrent.locks.ReentrantLock;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class WarehouseAssetServiceImpl extends ServiceImpl<WarehouseAssetMapper, WarehouseAsset> implements IWarehouseAssetService {
    private final ApplicationEventPublisher eventPublisher;
    private final ReentrantLock reentrantLock = new ReentrantLock();
    private final WarehouseMapper warehouseMapper;

    @Override
    public void saveInData(AssetLifecycleDTO assetLifecycleDTO, WarehouseAssetDTO warehouseAssetDTO) {
        reentrantLock.lock();
        Optional<WarehouseAsset> warehouseAssetData = getWarehouseAssetData(warehouseAssetDTO);
        if (warehouseAssetData.isPresent()) {
            //进行更新
            EntityOperations
                    .doUpdate(baseMapper)
                    .load(warehouseAssetData::get)
                    .update(asset -> asset.updateIn(warehouseAssetDTO))
                    .successHook(x -> eventPublisher.publishEvent(new WarehouseAssetEvents.WarehouseAssetInEvents(x, assetLifecycleDTO)))
                    .execute();
        } else {
            //创建
            EntityOperations
                    .doCreate(baseMapper)
                    .create(WarehouseAsset::new)
                    .update(warehouseAsset -> warehouseAsset.dto2WarehouseAsset(warehouseAssetDTO))
                    .successHook(x -> eventPublisher.publishEvent(new WarehouseAssetEvents.WarehouseAssetInEvents(x, assetLifecycleDTO)))
                    .execute();
        }
        reentrantLock.unlock();
    }

    @Override
    public void saveOutData(AssetLifecycleDTO assetLifecycleDTO, WarehouseAssetDTO warehouseAssetDTO) {
        reentrantLock.lock();
        Optional<WarehouseAsset> warehouseAssetData = getWarehouseAssetData(warehouseAssetDTO);
        if (warehouseAssetData.isPresent()) {
            //进行更新
            EntityOperations
                    .doUpdate(baseMapper)
                    .load(warehouseAssetData::get)
                    .update(asset -> asset.updateOut(warehouseAssetDTO))
                    .successHook(x -> eventPublisher.publishEvent(new WarehouseAssetEvents.WarehouseAssetOutEvents(x, assetLifecycleDTO)))
                    .execute();
        } else {
            //创建
            EntityOperations
                    .doCreate(baseMapper)
                    .create(WarehouseAsset::new)
                    .update(warehouseAsset -> warehouseAsset.dto2WarehouseAsset(warehouseAssetDTO))
                    .successHook(x -> eventPublisher.publishEvent(new WarehouseAssetEvents.WarehouseAssetOutEvents(x, assetLifecycleDTO)))
                    .execute();
        }
        reentrantLock.unlock();
    }

    @Override
    public List<WarehouseAsset> getByPage(WarehouseAssetRequest warehouseAssetRequest) {
        //获得有数据的仓库ID
        var x = warehouseMapper.selectList(new LambdaQueryWrapper<Warehouse>()
                .eq(Warehouse::getIsDataInfo, ValidStatus.VALID).and(query -> query.eq(Warehouse::getId, warehouseAssetRequest.getWarehouseId())
                        .or().eq(Warehouse::getParentId, warehouseAssetRequest.getWarehouseId()))
        );
        return list(warehouseAssetRequest.getQuery(x.stream().map(Warehouse::getId).toList()));
    }


    private Optional<WarehouseAsset> getWarehouseAssetData(WarehouseAssetDTO warehouseAssetDTO) {
        return Optional.ofNullable(getOne(new LambdaQueryWrapper<WarehouseAsset>()
                .eq(WarehouseAsset::getProductId, warehouseAssetDTO.getProductId())
                .eq(WarehouseAsset::getHouseId, warehouseAssetDTO.getHouseId())));
    }


}
