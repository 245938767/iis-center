declare namespace API {
  type AssetRecord = {
    amount?: number;
    assetId?: number;
    batchNo?: string;
    id?: number;
    inOutType?: 'IN' | 'OUT';
    operateUser?: string;
    price?: number;
    productCode?: string;
    productId?: number;
    productImg?: string;
    productName?: string;
    productNum?: number;
    productSpecification?: string;
    tax?: number;
    taxRate?: number;
    validStatus?: 'INVALID' | 'VALID';
    warehouseAssetBizType?:
      | 'CONSUMABLE'
      | 'INGREDIENTS'
      | 'MAIN_INGREDiENT'
      | 'PRODUCT'
      | 'PRODUCT_SALES'
      | 'REPAIR_PARTS';
    warehouseId?: number;
    warehouseName?: string;
  };

  type AssetResponse = {
    /** 批次总金额 */
    amount?: number;
    /** 资产ID */
    assetId?: string;
    assetRecordList?: AssetRecord[];
    /** 批次号 */
    batchNo?: string;
    createTime?: string;
    /** 创建人ID */
    createUserId?: number;
    /** 创建人 */
    createUserName?: string;
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
    /** 出入库业务类型名称 */
    inOutBizTypeName?: string;
    /** 出入库类型 */
    inOutType?: 'IN' | 'OUT';
    /** 出入库类型名称 */
    inOutTypeName?: string;
    productImgs?: string[];
    updateTime?: string;
    /** 仓库唯一ID */
    warehouseId?: number;
    /** 仓库名称 */
    warehouseName?: string;
  };

  type CodeValue = {
    k?: string;
    l?: string;
    v?: string;
  };

  type detailParams = {
    /** id */
    id: number;
  };

  type JsonObjectboolean = {
    code?: number;
    msg?: string;
    result?: boolean;
    success?: boolean;
  };

  type JsonObjectLogisticsDetailResponse = {
    code?: number;
    msg?: string;
    result?: LogisticsDetailResponse;
    success?: boolean;
  };

  type LogisicsProductRequest = {
    productId?: number;
    productNum?: number;
  };

  type LogisticsCreateRequest = {
    consigneeWarehouseId?: number;
    freight?: number;
    logisticsProductRequests?: LogisicsProductRequest[];
    shipWarehouseId?: number;
  };

  type LogisticsDetailResponse = {
    arriveTime?: string;
    assetId?: number;
    assetResponseList?: AssetResponse[];
    codeValueStatus?: LogisticsStatusStep[];
    consigneeWarehouseId?: number;
    consigneeWarehouseName?: string;
    createdAt?: number;
    flowNo?: number;
    freight?: number;
    id?: number;
    logisticsStatus?: 'COMPLETION' | 'DELIVERY' | 'TRANSIT';
    orderBaseResponse?: OrderBaseResponse;
    orderId?: number;
    products?: CodeValue[];
    shipWarehouseId?: number;
    shipWarehouseName?: string;
    updatedAt?: number;
    version?: number;
  };

  type LogisticsStatusStep = {
    current?: boolean;
    /** 时间 */
    dateTime?: string;
    /** 介绍小字 */
    description?: string;
    /** 状态 */
    status?: number;
    /** 标题 */
    title?: string;
  };

  type LogisticsUpdateRequest = {
    consigneeWarehouseId?: number;
    flowNo?: number;
    freight?: number;
    shipWarehouseId?: number;
  };

  type OrderBaseResponse = {
    attrs?: CodeValue[];
    createdAt?: number;
    flowNo?: number;
    id?: number;
    orderState?: number;
    orderType?: number;
    payList?: PayItem[];
    payTime?: number;
    realAmount?: number;
    totalAmount?: number;
    updatedAt?: number;
    userId?: number;
    validStatus?: 'INVALID' | 'VALID';
    version?: number;
  };

  type PayItem = {
    money?: number;
    payGroup?: 'BANK' | 'COUPON' | 'PLATFORM_PAY' | 'THIRD_PAY' | 'VIRTUAL_PROPERTY';
    payType?: 'ACTIVITY' | 'ALIPAY' | 'COIN' | 'WECHAT';
  };

  type TableDataInfo = {
    code?: number;
    msg?: string;
    rows?: Record<string, any>[];
    total?: number;
  };
}
