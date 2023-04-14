package cn.iiss.warehouse.assetrecord.service;

import cn.iiss.warehouse.face.model.Asset;
import cn.iiss.warehouse.assetrecord.AssetRecordUpdate;
import com.baomidou.mybatisplus.extension.service.IService;
import cn.iiss.warehouse.face.model.AssetRecord;
import cn.iiss.warehouse.assetrecord.AssetRecordDTO;

import java.util.List;

public interface IAssetRecordService extends IService<AssetRecord> {

    public boolean batchSaveIn(Asset asset , List<AssetRecordDTO>assetRecordDTOList);

    public boolean batchSaveOut(Asset asset, List<AssetRecordDTO> assetRecordDTOList);

    public boolean batchSaveUpdate(Asset asset, List<AssetRecordUpdate> assetRecordUpdateList);

}
