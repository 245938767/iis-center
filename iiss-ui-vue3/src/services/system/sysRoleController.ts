// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /role */
export async function editUsingPUT7(body: API.SysRole, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/role', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /role */
export async function addUsingPOST9(body: API.SysRole, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/role', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /role/${param0} */
export async function removeUsingDELETE9(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE9Params,
  options?: { [key: string]: any },
) {
  const { roleIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/role/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /role/${param0} */
export async function getInfoUsingGET7(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET7Params,
  options?: { [key: string]: any },
) {
  const { roleId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/role/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** allocatedList GET /role/authUser/allocatedList */
export async function allocatedListUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.allocatedListUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/role/authUser/allocatedList', {
    method: 'GET',
    params: {
      ...params,
      'dept.params': undefined,
      ...params['dept.params'],
      params: undefined,
      ...params['params'],
      'roles[0].params': undefined,
      ...params['roles[0].params'],
    },
    ...(options || {}),
  });
}

/** cancelAuthUser PUT /role/authUser/cancel */
export async function cancelAuthUserUsingPUT(
  body: API.SysUserRole,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/role/authUser/cancel', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** cancelAuthUserAll PUT /role/authUser/cancelAll */
export async function cancelAuthUserAllUsingPUT(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.cancelAuthUserAllUsingPUTParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/role/authUser/cancelAll', {
    method: 'PUT',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** selectAuthUserAll PUT /role/authUser/selectAll */
export async function selectAuthUserAllUsingPUT(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.selectAuthUserAllUsingPUTParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/role/authUser/selectAll', {
    method: 'PUT',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** unallocatedList GET /role/authUser/unallocatedList */
export async function unallocatedListUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.unallocatedListUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/role/authUser/unallocatedList', {
    method: 'GET',
    params: {
      ...params,
      'dept.params': undefined,
      ...params['dept.params'],
      params: undefined,
      ...params['params'],
      'roles[0].params': undefined,
      ...params['roles[0].params'],
    },
    ...(options || {}),
  });
}

/** changeStatus PUT /role/changeStatus */
export async function changeStatusUsingPUT(body: API.SysRole, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/role/changeStatus', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** dataScope PUT /role/dataScope */
export async function dataScopeUsingPUT(body: API.SysRole, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/role/dataScope', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** deptTree GET /role/deptTree/${param0} */
export async function deptTreeUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deptTreeUsingGETParams,
  options?: { [key: string]: any },
) {
  const { roleId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/role/deptTree/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** export POST /role/export */
export async function exportUsingPOST6(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST6Params,
  options?: { [key: string]: any },
) {
  return request<any>('/role/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /role/list */
export async function listUsingGET9(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET9Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/role/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** optionselect GET /role/optionselect */
export async function optionselectUsingGET2(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/role/optionselect', {
    method: 'GET',
    ...(options || {}),
  });
}
