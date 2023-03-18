// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /config */
export async function editUsingPUT(body: API.SysConfig, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/config', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /config */
export async function addUsingPOST(body: API.SysConfig, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/config', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /config/${param0} */
export async function removeUsingDELETE(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETEParams,
  options?: { [key: string]: any },
) {
  const { configIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/config/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /config/${param0} */
export async function getInfoUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGETParams,
  options?: { [key: string]: any },
) {
  const { configId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/config/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getConfigKey GET /config/configKey/${param0} */
export async function getConfigKeyUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getConfigKeyUsingGETParams,
  options?: { [key: string]: any },
) {
  const { configKey: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/config/configKey/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** export POST /config/export */
export async function exportUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOSTParams,
  options?: { [key: string]: any },
) {
  return request<any>('/config/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /config/list */
export async function listUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGETParams,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/config/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** refreshCache DELETE /config/refreshCache */
export async function refreshCacheUsingDELETE(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/config/refreshCache', {
    method: 'DELETE',
    ...(options || {}),
  });
}
