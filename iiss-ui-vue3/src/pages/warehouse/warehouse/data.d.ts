type WareHouse = {
  /** 子树 */
  children?: WareHouse[];
  /** 代码 */
  code?: string;
  /** 删除标志 */
  deleteFlag?: number;
  /** 禁用标志 */
  disabled?: boolean;
  id?: number;
  /** 父id */
  parentId?: number;
  /** 仓库级别 */
  wareHouseLevel?: number;
  /** 仓库地址 */
  warehouseAddress?: string;
  /** 仓库管理员id */
  warehouseAdmin?: number;
  /** 仓库名 */
  warehouseName?: string;
};

type WareHouseAdminVo = {
  /** 用户id */
  userId?: number;
  /** 仓库树结构 */
  wareHouses?: WareHouseVo[];
  /** 仓库id */
  warehouseId?: number;
};

type WarehouseAgree = {
  /** 商品同意后的数据 */
  warehouseAgreeProductList?: WarehouseAgreeProduct[];
  /** 记录id */
  warehouseProductRecordId: number;
};

type WarehouseAgreeProduct = {
  /** 金额 */
  amount?: number;
  /** 商品被引用次数 */
  citations?: number;
  createTime?: string;
  isOrderProduct?: boolean;
  orderNo?: string;
  /** 单价 */
  price?: number;
  /** 商品属性 */
  productAttrValue?: number;
  productCode?: string;
  /** 商品唯一ID */
  productId?: number;
  productImg?: string;
  productName?: string;
  /** 产品数量 */
  productNum?: number;
  /** 商品规格 */
  productSpecification?: string;
  /** 税款 */
  tax?: number;
  /** 税率 */
  taxRate?: number;
  /** 关联仓库ID */
  warehouseId?: number;
  /** 仓库名称 */
  warehouseName?: string;
  /** 仓库唯一ID */
  warehouseProductId?: number;
};

type WarehouseProductRecordSaveOutRequest = {
  /** 调整的仓库ID */
  warehouseAdjustId?: number;
  /** 产品总金额 */
  warehouseAmount?: number;
  /** 所属仓库id */
  warehouseId: number;
  /** 商品数据 */
  warehouseProductSaveOutRequestList: WarehouseProductSaveOutRequest[];
  /**  出库属性(1 销售出库 2 生产领用 3 调仓 4 发外加工) */
  warehouseType: number;
};

type WarehouseProductRecordSaveRequest = {
  /** 产品总金额 */
  warehouseAmount: number;
  /** 所属仓库id */
  warehouseId: number;
  /** 入库关联商品信息 */
  warehouseProductSaveRequestList: WarehouseProductSaveRequest[];
  /**  入库属性（1生产入库 2外购入库） */
  warehouseType: number;
};

type WarehouseProductSaveOutRequest = {
  /** 销售金额 */
  amount?: number;
  /** 是否订单产品 */
  isOrderProduct?: boolean;
  /** 订单号 */
  orderNo?: string;
  /** 销售单价 */
  price?: number;
  /** 商品属性1-易耗品2-主料 3-产成品 4-维修配件 5-销售商品 6-辅料 */
  productAttrValue: number;
  /** 产品代码 */
  productCode: string;
  /** 商品唯一ID */
  productId: number;
  /** 产品图片 */
  productImg: string;
  /** 产品名称 */
  productName: string;
  /** 商品数量 */
  productNum?: number;
  /** 商品规格 */
  productSpecification: string;
  /** 销售税款 */
  tax?: number;
  /** 销售税率 */
  taxRate?: number;
  /** 仓库唯一ID */
  warehouseProductId: number;
};

type WarehouseProductSaveRequest = {
  /** 金额 */
  amount?: number;
  /** 单价 */
  price?: number;
  /** 商品属性 */
  productAttrValue: number;
  /** 产品代码 */
  productCode: string;
  /** 商品唯一ID */
  productId: number;
  /** 产品图片 */
  productImg: string;
  /** 产品名称 */
  productName: string;
  /** 商品数量 */
  productNum: number;
  /** 商品规格 */
  productSpecification: string;
  /** 税款 */
  tax?: number;
  /** 税率 */
  taxRate?: number;
  warehouseProductId?: number;
};

type WareHouseVo = {
  /** 子树 */
  children?: WareHouseVo[];
  /** 代码 */
  code?: string;
  /** 删除标志 */
  deleteFlag?: number;
  id?: number;
  /** 树节点禁用标志 */
  isDisabled?: boolean;
  /** 父id */
  parentId?: number;
  /** 仓库管理员名字 */
  wareHouseAdminName?: string;
  /** 仓库级别 */
  wareHouseLevel?: number;
  /** 仓库地址 */
  warehouseAddress?: string;
  /** 仓库管理员id */
  warehouseAdmin?: number;
  /** 仓库名 */
  warehouseName?: string;
};
type deleteWareHouseParams = {
  /** ids */
  ids: string;
};

type deleteWareHouseTreeParams = {
  /** targetId */
  targetId: number;
};
type getTreeNodeLevelParams = {
  /** targetId */
  targetId: number;
};

type getTreeWithDisabled2Params = {
  /** targetId */
  targetId: number;
};

type getWareHouseListParams = {
  /** 代码 */
  code?: string;
  /** 删除标志 */
  deleteFlag?: number;
  /** 禁用标志 */
  disabled?: boolean;
  id?: number;
  /** 父id */
  parentId?: number;
  /** 仓库级别 */
  wareHouseLevel?: number;
  /** 仓库地址 */
  warehouseAddress?: string;
  /** 仓库管理员id */
  warehouseAdmin?: number;
  /** 仓库名 */
  warehouseName?: string;
};

type getWareHouseInfoParams = {
  /** id */
  id: number;
};

type exportWarehouseListParams = {
  /** 代码 */
  code?: string;
  /** 删除标志 */
  deleteFlag?: number;
  /** 禁用标志 */
  disabled?: boolean;
  id?: number;
  /** 父id */
  parentId?: number;
  /** 仓库级别 */
  wareHouseLevel?: number;
  /** 仓库地址 */
  warehouseAddress?: string;
  /** 仓库管理员id */
  warehouseAdmin?: number;
  /** 仓库名 */
  warehouseName?: string;
};
