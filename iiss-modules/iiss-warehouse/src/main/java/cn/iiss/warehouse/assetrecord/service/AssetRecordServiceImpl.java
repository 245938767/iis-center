package cn.iiss.warehouse.assetrecord.service;

import cn.iiss.warehouse.face.model.InOutType;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.face.model.AssetRecord;
import cn.iiss.warehouse.assetrecord.AssetRecordDTO;
import cn.iiss.warehouse.assetrecord.AssetRecordUpdate;
import cn.iiss.warehouse.assetrecord.mapper.AssetRecordMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class AssetRecordServiceImpl extends ServiceImpl<AssetRecordMapper, AssetRecord> implements IAssetRecordService {
    @Override
    public boolean batchSaveIn(Asset asset, List<AssetRecordDTO> assetRecordDTOList) {
        List<AssetRecord> assetRecords = assetRecordDTOList.stream().map(x -> x.transAssetRecord(asset.getBatchNo(), asset.getId(), asset.getWarehouseId(), asset.getWarehouseName(), InOutType.IN)).toList();
        return saveBatch(assetRecords);
    }

    @Override
    public boolean batchSaveOut(Asset asset, List<AssetRecordDTO> assetRecordDTOList) {
        List<AssetRecord> assetRecords = assetRecordDTOList.stream().map(x -> x.transAssetRecord(asset.getBatchNo(), asset.getId(), asset.getWarehouseId(), asset.getWarehouseName(), InOutType.OUT)).toList();
        return saveBatch(assetRecords);
    }

    @Override
    public boolean batchSaveUpdate(Asset asset, List<AssetRecordUpdate> assetRecordUpdateList) {
        remove(new LambdaQueryWrapper<AssetRecord>().eq(AssetRecord::getAssetId, asset.getId()));
        List<AssetRecord> assetRecords = assetRecordUpdateList.stream().map(x -> x.translationAssetRecord(asset.getId(), asset.getInOutType())).toList();
        return saveBatch(assetRecords);
    }
}
