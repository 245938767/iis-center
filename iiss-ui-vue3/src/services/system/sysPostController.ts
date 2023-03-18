// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /post */
export async function editUsingPUT6(body: API.SysPost, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/post', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /post */
export async function addUsingPOST8(body: API.SysPost, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/post', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /post/${param0} */
export async function removeUsingDELETE8(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE8Params,
  options?: { [key: string]: any },
) {
  const { postIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/post/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /post/${param0} */
export async function getInfoUsingGET6(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET6Params,
  options?: { [key: string]: any },
) {
  const { postId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/post/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** export POST /post/export */
export async function exportUsingPOST5(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.exportUsingPOST5Params,
  options?: { [key: string]: any },
) {
  return request<any>('/post/export', {
    method: 'POST',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** list GET /post/list */
export async function listUsingGET8(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET8Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/post/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** optionselect GET /post/optionselect */
export async function optionselectUsingGET1(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/post/optionselect', {
    method: 'GET',
    ...(options || {}),
  });
}
