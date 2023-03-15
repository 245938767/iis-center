// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 修改商品管理 PUT /product/v1 */
export async function updateGoods(body: API.Product, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/v1', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 新增商品管理 POST /product/v1 */
export async function addNewGoods(body: API.Product, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/v1', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 删除商品管理 DELETE /product/v1/${param0} */
export async function deleteGoods(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deleteGoodsParams,
  options?: { [key: string]: any },
) {
  const { ids: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/product/product/v1/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获取商品管理详细信息 GET /product/v1/${param0} */
export async function getGoodsInfo(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getGoodsInfoParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/product/product/v1/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 批量删除（递归 POST /product/v1/deleteTreeByTargetIds */
export async function deleteTreeByTargetIds(body: number[], options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/v1/deleteTreeByTargetIds', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 根据分类id查询商品 GET /product/v1/getGoodsByCategoryId/${param0} */
export async function getGoodsByCategoryId(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getGoodsByCategoryIdParams,
  options?: { [key: string]: any },
) {
  const { categoryId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/product/product/v1/getGoodsByCategoryId/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 查询商品管理列表 GET /product/v1/list */
export async function getGoodsList(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getGoodsListParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/product/product/v1/list', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}
