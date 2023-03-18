// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** add POST /operlog */
export async function addUsingPOST7(body: API.SysOperLog, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/operlog', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /operlog/${param0} */
export async function removeUsingDELETE7(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE7Params,
  options?: { [key: string]: any },
) {
  const { operIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/operlog/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** clean DELETE /operlog/clean */
export async function cleanUsingDELETE1(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/operlog/clean', {
    method: 'DELETE',
    ...(options || {}),
  });
}

/** export POST /operlog/export */
export async function exportUsingPOST4(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST4Params,
  options?: { [key: string]: any },
) {
  return request<any>('/operlog/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /operlog/list */
export async function listUsingGET7(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET7Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/operlog/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}
