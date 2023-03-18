// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /dict/data */
export async function editUsingPUT2(body: API.SysDictData, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/data', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /dict/data */
export async function addUsingPOST2(body: API.SysDictData, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/data', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /dict/data/${param0} */
export async function removeUsingDELETE2(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE2Params,
  options?: { [key: string]: any },
) {
  const { dictCodes: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dict/data/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /dict/data/${param0} */
export async function getInfoUsingGET2(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET2Params,
  options?: { [key: string]: any },
) {
  const { dictCode: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dict/data/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** export POST /dict/data/export */
export async function exportUsingPOST1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST1Params,
  options?: { [key: string]: any },
) {
  return request<any>('/dict/data/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /dict/data/list */
export async function listUsingGET2(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET2Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/dict/data/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** dictType GET /dict/data/type/${param0} */
export async function dictTypeUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.dictTypeUsingGETParams,
  options?: { [key: string]: any },
) {
  const { dictType: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dict/data/type/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}
