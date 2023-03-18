// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** add POST /logininfor */
export async function addUsingPOST4(body: API.SysLogininfor, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/logininfor', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /logininfor/${param0} */
export async function removeUsingDELETE4(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE4Params,
  options?: { [key: string]: any },
) {
  const { infoIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/logininfor/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** clean DELETE /logininfor/clean */
export async function cleanUsingDELETE(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/logininfor/clean', {
    method: 'DELETE',
    ...(options || {}),
  });
}

/** export POST /logininfor/export */
export async function exportUsingPOST3(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST3Params,
  options?: { [key: string]: any },
) {
  return request<any>('/logininfor/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /logininfor/list */
export async function listUsingGET4(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET4Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/logininfor/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** unlock GET /logininfor/unlock/${param0} */
export async function unlockUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.unlockUsingGETParams,
  options?: { [key: string]: any },
) {
  const { userName: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/logininfor/unlock/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}
