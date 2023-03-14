declare namespace API {
  type AssetCreateRequest = {
    /** 商品信息列表 */
    assetProductRequestList: AssetProductRequest[];
    /** 仓库唯一ID */
    houseId: number;
    /** 出入库业务类型 */
    inOutBizType:
      | 'PRODUCT_WAREHOUSE'
      | 'PURCHASE_WAREHOUSE'
      | 'WAREHOUSE_ADJUST_IN'
      | 'WAREHOUSE_ADJUST_OUT'
      | 'WAREHOUSE_ADJUST_POSiTION'
      | 'WAREHOUSE_OUTSOURCING'
      | 'WAREHOUSE_REVIEW'
      | 'WAREHOUSE_SALES';
  };

  type AssetProductRequest = {
    /** 金额 */
    amount?: number;
    /** 是否订单产品 */
    isOrderProduct?: boolean;
    /** 订单号 */
    orderNo?: string;
    /** 单价 */
    price?: number;
    /** 商品唯一ID(唯一) */
    productId: number;
    productNum?: number;
    /** 税款 */
    tax?: number;
    /** 税率 */
    taxRate?: number;
    /** 商品业务属性 */
    warehouseAssetBizType:
      | 'CONSUMABLE'
      | 'INGREDIENTS'
      | 'MAIN_INGREDiENT'
      | 'PRODUCT'
      | 'PRODUCT_SALES'
      | 'REPAIR_PARTS';
  };

  type AssetQueryRequest = {
    /** 仓库号 */
    houseId?: number;
    /** 出入库业务类型 */
    inOutBizType?:
      | 'PRODUCT_WAREHOUSE'
      | 'PURCHASE_WAREHOUSE'
      | 'WAREHOUSE_ADJUST_IN'
      | 'WAREHOUSE_ADJUST_OUT'
      | 'WAREHOUSE_ADJUST_POSiTION'
      | 'WAREHOUSE_OUTSOURCING'
      | 'WAREHOUSE_REVIEW'
      | 'WAREHOUSE_SALES';
    /** 出入库类型 */
    inOutType?: 'IN' | 'OUT';
  };

  type AssetTranslationRequest = {
    /** 商品信息列表 */
    assetProductRequestList: AssetProductRequest[];
    /** 仓库唯一ID */
    houseId: number;
    /** 请输入转仓，仓库号 */
    translationHouseId?: number;
  };

  type deleteWarehouseParams = {
    /** houseId */
    houseId: number;
  };

  type getByBatchNoParams = {
    /** batchNo */
    batchNo: string;
  };

  type getByBatchNoUsingGETParams = {
    /** warehouseAssetId */
    warehouseAssetId: number;
  };

  type getParentOneParams = {
    /** id */
    id: number;
  };
  type getByIdParams = {
    /** id */
    id: number;
  };

  type TableDataInfo = {
    code?: number;
    msg?: string;
    rows?: Record<string, any>[];
    total?: number;
  };

  type WarehouseAssetRequest = {
    warehouseId?: number;
  };

  type WarehouseCreateRequest = {
    code?: string;
    parentId?: number;
    phone?: string;
    warehouseAddress?: string;
    warehouseAdminId?: number;
    warehouseName: string;
  };

  type WarehouseUpdateRequest = {
    /** 代码 */
    code?: string;
    id: number;
    parentId: number;
    phone?: string;
    /** 仓库地址 */
    warehouseAddress?: string;
    /** 仓库管理员id */
    warehouseAdminId?: number;
    /** 仓库名 */
    warehouseName?: string;
    phone?: string;
  };
}
