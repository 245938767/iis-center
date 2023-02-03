package cn.iiss.warehouse.warehouse.service;

import com.baomidou.mybatisplus.extension.service.IService;
import cn.iiss.commonss.constants.ValidStatus;
import cn.iiss.warehouse.warehouse.Warehouse;
import cn.iiss.warehouse.warehouse.WarehouseDTO;
import cn.iiss.warehouse.warehouse.request.WarehouseCreateRequest;
import cn.iiss.warehouse.warehouse.request.WarehouseUpdateRequest;

import java.util.List;

public interface IWarehouseService extends IService<Warehouse> {
    public boolean updateWarehouseUseStatus(Long houseId, ValidStatus validStatus);

    /**
     * 获得仓库名称
     *
     * @param id
     * @return
     */
    public String getWarehouseName(Long id);

    /**
     * 创建仓库
     *
     * @param warehouseCreateRequest
     * @return
     */
    public Boolean create(WarehouseCreateRequest warehouseCreateRequest);

    /**
     * 更新仓库
     *
     * @param warehouseUpdateRequest
     * @return
     */
    public Boolean update(WarehouseUpdateRequest warehouseUpdateRequest);

    /**
     * 删除仓库信息
     *
     * @param warehouseId
     * @return
     */
    public boolean delete(Long warehouseId);

    /**
     * 获得树形数据
     *
     * @return
     */

    public List<WarehouseDTO> getTreeData();

    /**
     * 获得ID数据
     * @param id
     * @return
     */
    public WarehouseDTO getWarehouseById(Long id);
}
