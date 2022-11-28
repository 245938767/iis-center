package cn.iiss.warehouse.warehouseasset.service;

import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
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

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class WarehouseAssetServiceImpl extends ServiceImpl<WarehouseAssetMapper, WarehouseAsset> implements IWarehouseAssetService {
    private final ApplicationEventPublisher eventPublisher;

    @Override
    public void saveInData(AssetLifecycleDTO assetLifecycleDTO, WarehouseAssetDTO warehouseAssetDTO) {
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
    }

    @Override
    public void saveOutData(AssetLifecycleDTO assetLifecycleDTO, WarehouseAssetDTO warehouseAssetDTO) {
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
    }

    @Override
    public List<WarehouseAsset> getByPage(WarehouseAssetRequest warehouseAssetRequest) {
        return list(warehouseAssetRequest.getQuery());
    }


    private Optional<WarehouseAsset> getWarehouseAssetData(WarehouseAssetDTO warehouseAssetDTO) {
        return Optional.ofNullable(getOne(new LambdaQueryWrapper<WarehouseAsset>()
                .eq(WarehouseAsset::getProductId, warehouseAssetDTO.getProductId())
                .eq(WarehouseAsset::getHouseId, warehouseAssetDTO.getHouseId())));
    }


}
