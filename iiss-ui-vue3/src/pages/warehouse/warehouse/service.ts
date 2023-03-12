import request from '@/utils/request';




// @ts-ignore
/* eslint-disable */

/** 修改仓库信息管理 PUT /dev-api/system/house */
export async function editWareHouse(body: WareHouse, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dev-api/system/house', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 新增仓库信息管理 POST /dev-api/system/house */
export async function addWareHouse(body: WareHouse, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dev-api/system/house', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 删除仓库信息管理 DELETE /dev-api/system/house/${param0} */
export async function deleteWareHouse(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: deleteWareHouseParams,
  options?: { [key: string]: any },
) {
  const { ids: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dev-api/system/house/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获取仓库信息管理详细信息 GET /dev-api/system/house/${param0} */
export async function getWareHouseInfo(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: getWareHouseInfoParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dev-api/system/house/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 添加用户和仓库的联系 POST /dev-api/system/house/addWareHouseAdmin */
export async function addWareHouseAdmin(
  body: WareHouseAdminVo,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/addWareHouseAdmin', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 导出仓库信息管理列表 GET /dev-api/system/house/export */
export async function exportWarehouseList(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: exportWarehouseListParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/export', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** 获取除了账套管理员和已被分配仓库的用户id GET /dev-api/system/house/getAvailableUsers */
export async function getAvailableUserIds(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dev-api/system/house/getAvailableUsers', {
    method: 'GET',
    ...(options || {}),
  });
}

/** 查询仓库信息管理列表 GET /dev-api/system/house/list */
export async function getWareHouseList(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: getWareHouseListParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/list', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** 递归删除 POST /dev-api/system/house/tree/delete */
export async function deleteWareHouseTree(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: deleteWareHouseTreeParams,
  body: WareHouseVo[],
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/tree/delete', {
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

/** 获取带disabled的树形数据 POST /dev-api/system/house/tree/disabled */
export async function getTreeWithDisabled2(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: getTreeWithDisabled2Params,
  body: WareHouseVo[],
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/tree/disabled', {
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

/** 树节点级别 POST /dev-api/system/house/tree/getTreeNodeLevel */
export async function getTreeNodeLevel(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: getTreeNodeLevelParams,
  body: WareHouseVo[],
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dev-api/system/house/tree/getTreeNodeLevel', {
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

/** 获取树形数据 GET /dev-api/system/house/tree/select */
export async function getWareHouseTree(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dev-api/system/house/tree/select', {
    method: 'GET',
    ...(options || {}),
  });
}
