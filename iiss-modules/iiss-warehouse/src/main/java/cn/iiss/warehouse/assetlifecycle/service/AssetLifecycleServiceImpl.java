package cn.iiss.warehouse.assetlifecycle.service;

import cn.iiss.warehouse.assetlifecycle.AssetLifecycleDTO;
import cn.iiss.warehouse.assetlifecycle.mapper.AssetLifecycleMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.warehouse.assetlifecycle.AssetLifecycle;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class AssetLifecycleServiceImpl extends ServiceImpl<AssetLifecycleMapper, AssetLifecycle> implements IAssetLifecycleService {

    @Override
    public boolean saveLifecycle(AssetLifecycle assetLifecycle) {
        return save(assetLifecycle);
    }

    @Override
    public List<AssetLifecycleDTO> getLifecycle(Long warehouseAssetId) {
        List<AssetLifecycle> list = list(new LambdaQueryWrapper<AssetLifecycle>().eq(AssetLifecycle::getWarehouseAssetId, warehouseAssetId));
        return list.stream().map(x->AssetLifecycleDTO.builder().build().assetLifecycle2Dto(x)).collect(Collectors.toList());
    }
}
