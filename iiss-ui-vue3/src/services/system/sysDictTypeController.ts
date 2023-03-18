// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /dict/type */
export async function editUsingPUT3(body: API.SysDictType, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/type', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /dict/type */
export async function addUsingPOST3(body: API.SysDictType, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/type', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /dict/type/${param0} */
export async function removeUsingDELETE3(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE3Params,
  options?: { [key: string]: any },
) {
  const { dictIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dict/type/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /dict/type/${param0} */
export async function getInfoUsingGET3(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET3Params,
  options?: { [key: string]: any },
) {
  const { dictId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dict/type/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** export POST /dict/type/export */
export async function exportUsingPOST2(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST2Params,
  options?: { [key: string]: any },
) {
  return request<any>('/dict/type/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /dict/type/list */
export async function listUsingGET3(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET3Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/dict/type/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** optionselect GET /dict/type/optionselect */
export async function optionselectUsingGET(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/type/optionselect', {
    method: 'GET',
    ...(options || {}),
  });
}

/** refreshCache DELETE /dict/type/refreshCache */
export async function refreshCacheUsingDELETE1(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dict/type/refreshCache', {
    method: 'DELETE',
    ...(options || {}),
  });
}
