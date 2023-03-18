// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /menu */
export async function editUsingPUT4(body: API.SysMenu, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/menu', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /menu */
export async function addUsingPOST5(body: API.SysMenu, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/menu', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** getInfo GET /menu/${param0} */
export async function getInfoUsingGET4(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET4Params,
  options?: { [key: string]: any },
) {
  const { menuId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/menu/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** remove DELETE /menu/${param0} */
export async function removeUsingDELETE5(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE5Params,
  options?: { [key: string]: any },
) {
  const { menuId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/menu/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getRouters GET /menu/getRouters */
export async function getRoutersUsingGET(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/menu/getRouters', {
    method: 'GET',
    ...(options || {}),
  });
}

/** list GET /menu/list */
export async function listUsingGET5(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET5Params,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/menu/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** roleMenuTreeselect GET /menu/roleMenuTreeselect/${param0} */
export async function roleMenuTreeselectUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.roleMenuTreeselectUsingGETParams,
  options?: { [key: string]: any },
) {
  const { roleId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/menu/roleMenuTreeselect/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** treeselect GET /menu/treeselect */
export async function treeselectUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.treeselectUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/menu/treeselect', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}
