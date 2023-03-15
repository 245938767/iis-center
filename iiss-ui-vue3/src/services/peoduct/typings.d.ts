declare namespace API {
  type Category = {
    /** 分类级别 */
    catLevel?: number;
    /** 子节点 */
    children?: Category[];
    deleteFlag?: number;
    disabled?: boolean;
    /** 分类id */
    id?: number;
    /** 分类名 */
    name?: string;
    /** 父id */
    parentId?: number;
  };

  type deleteCategoryParams = {
    /** ids */
    ids: string;
  };

  type deleteGoodsParams = {
    /** ids */
    ids: string;
  };

  type deleteTreeParams = {
    /** targetId */
    targetId: number;
  };

  type getCategoryInfoParams = {
    /** id */
    id: number;
  };

  type getCategoryListParams = {
    /** 分类级别 */
    catLevel?: number;
    deleteFlag?: number;
    disabled?: boolean;
    /** 分类id */
    id?: number;
    /** 分类名 */
    name?: string;
    /** 父id */
    parentId?: number;
  };

  type getGoodsByCategoryIdParams = {
    /** categoryId */
    categoryId: number;
  };

  type getGoodsInfoParams = {
    /** id */
    id: number;
  };

  type getGoodsListParams = {
    /** 品牌 */
    brand?: string;
    /** 分类id */
    categoryId?: number;
    /** 型号 */
    model?: string;
    /** 商品代码 */
    productCode?: string;
    /** 商品名 */
    productName?: string;
    /** 规格 */
    productSpecification?: string;
    /** 单位 */
    unit?: string;
  };

  type getTreeWithDisabledParams = {
    /** targetId */
    targetId: number;
  };

  type Product = {
    /** 品牌 */
    brand?: string;
    /** 分类id */
    categoryId?: number;
    id?: number;
    /** 型号 */
    model?: string;
    /** 备注 */
    note?: string;
    /** 商品代码 */
    productCode?: string;
    /** 商品图片 */
    productImg?: string;
    /** 商品名 */
    productName?: string;
    /** 规格 */
    productSpecification?: string;
    /** 单位 */
    unit?: string;
  };
}
