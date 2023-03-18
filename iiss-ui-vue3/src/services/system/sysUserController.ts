// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /user */
export async function editUsingPUT8(body: API.SysUserReq, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /user */
export async function addUsingPOST10(body: API.SysUserReq, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** getInfo GET /user/ */
export async function getInfoUsingGET9(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET9Params,
  options?: { [key: string]: any },
) {
  const { userId: param0, ...queryParams } = params;
  return request<Record<string, any>>('/user/', {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** remove DELETE /user/${param0} */
export async function removeUsingDELETE10(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE10Params,
  options?: { [key: string]: any },
) {
  const { userIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/user/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /user/${param0} */
export async function getInfoUsingGET10(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET10Params,
  options?: { [key: string]: any },
) {
  const { userId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/user/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** insertAuthRole PUT /user/authRole */
export async function insertAuthRoleUsingPUT(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.insertAuthRoleUsingPUTParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/user/authRole', {
    method: 'PUT',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** authRole GET /user/authRole/${param0} */
export async function authRoleUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.authRoleUsingGETParams,
  options?: { [key: string]: any },
) {
  const { userId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/user/authRole/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** changeStatus PUT /user/changeStatus */
export async function changeStatusUsingPUT1(
  body: API.SysUserReq,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/user/changeStatus', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** deptTree GET /user/deptTree */
export async function deptTreeUsingGET1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.deptTreeUsingGET1Params,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/user/deptTree', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** export POST /user/export */
export async function exportUsingPOST7(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST7Params,
  options?: { [key: string]: any },
) {
  return request<any>('/user/export', {
    method: 'POST',
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

/** getInfo GET /user/getInfo */
export async function getInfoUsingGET8(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user/getInfo', {
    method: 'GET',
    ...(options || {}),
  });
}

/** importData POST /user/importData */
export async function importDataUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.importDataUsingPOSTParams,
  body: string,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/user/importData', {
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

/** importTemplate POST /user/importTemplate */
export async function importTemplateUsingPOST(options?: { [key: string]: any }) {
  return request<any>('/user/importTemplate', {
    method: 'POST',
    ...(options || {}),
  });
}

/** info GET /user/info/${param0} */
export async function infoUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.infoUsingGETParams,
  options?: { [key: string]: any },
) {
  const { username: param0, ...queryParams } = params;
  return request<API.RLoginUser>(`/user/info/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** list GET /user/list */
export async function listUsingGET10(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET10Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/user/list', {
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

/** register POST /user/register */
export async function registerUsingPOST(body: API.SysUserReq, options?: { [key: string]: any }) {
  return request<API.Rboolean>('/user/register', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** resetPwd PUT /user/resetPwd */
export async function resetPwdUsingPUT(body: API.SysUserReq, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user/resetPwd', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
