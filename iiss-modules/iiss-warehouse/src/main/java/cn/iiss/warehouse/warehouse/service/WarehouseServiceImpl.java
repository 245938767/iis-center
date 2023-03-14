package cn.iiss.warehouse.warehouse.service;

import cn.iiss.warehouse.warehouse.WarehouseErrorCode;
import cn.iiss.warehouse.warehouse.request.WarehouseCreateRequest;
import cn.iiss.common.core.exception.ServiceException;
import cn.iiss.mybatis.support.EntityOperations;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.iiss.commons.constants.ValidStatus;
import cn.iiss.warehouse.asset.service.IAssetService;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.WarehouseDTO;
import cn.iiss.warehouse.warehouse.mapper.WarehouseMapper;
import cn.iiss.warehouse.warehouse.request.WarehouseUpdateRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class WarehouseServiceImpl extends ServiceImpl<WarehouseMapper, Warehouse> implements IWarehouseService {
    private final IAssetService assetService;

    @Override
    public boolean updateWarehouseUseStatus(Long houseId, ValidStatus validStatus) {
        return update(new LambdaUpdateWrapper<Warehouse>().eq(Warehouse::getId, houseId).set(Warehouse::getValidStatus, validStatus));
    }

    @Override
    public String getWarehouseName(Long id) {
        return getOne(new LambdaQueryWrapper<Warehouse>().eq(Warehouse::getId, id).select(Warehouse::getWarehouseName)).getWarehouseName();
    }

    @Override
    public Boolean create(WarehouseCreateRequest warehouseCreateRequest) {
        Warehouse warehouse = checkParentIsHaveData(warehouseCreateRequest.getParentId());
        return save(warehouseCreateRequest.translationWarehouse(warehouse.getWareHouseLevel() + 1));
    }

    @Override
    public Boolean update(WarehouseUpdateRequest warehouseUpdateRequest) {
        return updateById(warehouseUpdateRequest.translationWarehouse(null));
    }

    @Override
    public boolean delete(Long warehouseId) {
        if (Boolean.TRUE.equals(assetService.houseForAssetIsData(warehouseId))) {
            throw new ServiceException(WarehouseErrorCode.WAREHOUSE_DELETE_IS_EXIT.getName());
        }
        //是否有子类
        List<Warehouse> list = list(new LambdaQueryWrapper<Warehouse>().eq(Warehouse::getParentId, warehouseId));
        if (list != null && !list.isEmpty()) {
            throw new ServiceException(WarehouseErrorCode.WAREHOUSE_ERROR_HAVE_CINDER_ID.getName());
        }
        return removeById(warehouseId);
    }

    @Override
    public List<WarehouseDTO> getTreeData() {
        List<Warehouse> list = list();
        return translationTree(list);
    }

    @Override
    public List<WarehouseDTO> getOneData(Long id) {
        LambdaQueryWrapper<Warehouse> eq = new LambdaQueryWrapper<Warehouse>().eq(Warehouse::getParentId, id);
        List<WarehouseDTO> warehouseDTOS = list(eq).stream().map(Warehouse::warehouse2DTO).toList();
        return (warehouseDTOS);
    }

    @Override
    public WarehouseDTO getWarehouseById(Long id) {
        return getById(id).warehouse2DTO();
    }

    private List<WarehouseDTO> translationTree(List<Warehouse> warehouses) {
        Map<Long, WarehouseDTO> collect = warehouses.stream().map(Warehouse::warehouse2DTO).collect(Collectors.toMap(WarehouseDTO::getId, Function.identity()));
        List<WarehouseDTO> warehouseDTOList = new ArrayList<>();
        collect.forEach((id, data) -> {
            if (data.getParentId() == null || data.getParentId() == 0) {
                warehouseDTOList.add(data);
            } else {
                collect.get(data.getParentId()).setList(data);
            }
        });
        return warehouseDTOList;
    }

    private Warehouse checkParentIsHaveData(Long warehouseId) {
        if (warehouseId == null|| warehouseId==0) {
            return Warehouse.builder().wareHouseLevel(0).build();
        }
        //检查是否能够创建仓库（父类有数据不能在添加）
        Warehouse warehouse = getById(warehouseId);
        if (Boolean.FALSE.equals(assetService.houseForAssetIsData(warehouseId))) {
            //更新父类为无数据
            warehouse.updateIsDataInfoInValid();
            updateById(warehouse);
//            EntityOperations.doUpdate(getBaseMapper())
//                    .load(() -> warehouse)
//                    .update(Warehouse::updateIsDataInfoInValid)
//                    .execute();
            return warehouse;
        }
        throw new ServiceException(WarehouseErrorCode.WAREHOUSE_CREATE_PARENT_IS_EXIT.getName());
    }
}
