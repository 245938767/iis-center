// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 修改分类 PUT /product/category */
export async function updateCategory(body: API.Category, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/category', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 新增分类crud POST /product/category */
export async function addCategory(body: API.Category, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/category', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 删除分类 DELETE /product/category/${param0} */
export async function deleteCategory(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deleteCategoryParams,
  options?: { [key: string]: any },
) {
  const { ids: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/product/product/category/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获取分类crud详细信息 GET /product/category/${param0} */
export async function getCategoryInfo(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getCategoryInfoParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/product/product/category/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 查询分类列表 GET /product/category/list */
export async function getCategoryList(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getCategoryListParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/product/product/category/list', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** 递归删除 POST /product/category/tree/delete */
export async function deleteTree(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deleteTreeParams,
  body: API.Category[],
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/product/product/category/tree/delete', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    params: {
      ...params,
    },
    data: body,
    ...(options || {}),
  });
}

/** 获取带disabled的树 POST /product/category/tree/disabled */
export async function getTreeWithDisabled(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getTreeWithDisabledParams,
  body: API.Category[],
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/product/product/category/tree/disabled', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    params: {
      ...params,
    },
    data: body,
    ...(options || {}),
  });
}

/** 获取树结构 GET /product/category/tree/select */
export async function getCategoryTree(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/product/product/category/tree/select', {
    method: 'GET',
    ...(options || {}),
  });
}
