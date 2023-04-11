// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 创建仓库 POST /warehouse/v1/create */
export async function createWarehouse(
  body: API.WarehouseCreateRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/warehouse/warehouse/v1/create', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 删除仓库数据 POST /warehouse/v1/delete/${param0} */
export async function deleteWarehouse(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deleteWarehouseParams,
  options?: { [key: string]: any },
) {
  const { houseId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/warehouse/warehouse/v1/delete/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获得Parent的子数据 GET /warehouse/v1/getParentOneListj/${param0} */
export async function getParentOneList(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getParentOneParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/warehouse/warehouse/v1/getParentOneList/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}
/** 获得ID数据 GET /warehouse/v1/getByid/${param0} */
export async function getById(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getByIdParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/warehouse/warehouse/v1/getByid/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获得树形列表 POST /warehouse/v1/getTreeList */
export async function getChildList(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/warehouse/warehouse/v1/getChildList', {
    method: 'POST',
    ...(options || {}),
  });
}

/** 获得树形列表 POST /warehouse/v1/getTreeList */
export async function getTreeList(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/warehouse/warehouse/v1/getTreeList', {
    method: 'POST',
    ...(options || {}),
  });
}

/** 更新仓库信息 POST /warehouse/v1/update */
export async function updateWarehouse(
  body: API.WarehouseUpdateRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/warehouse/warehouse/v1/update', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
