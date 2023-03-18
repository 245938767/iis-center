// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /notice */
export async function editUsingPUT5(body: API.SysNotice, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/notice', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /notice */
export async function addUsingPOST6(body: API.SysNotice, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/notice', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** remove DELETE /notice/${param0} */
export async function removeUsingDELETE6(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE6Params,
  options?: { [key: string]: any },
) {
  const { noticeIds: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/notice/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** getInfo GET /notice/${param0} */
export async function getInfoUsingGET5(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET5Params,
  options?: { [key: string]: any },
) {
  const { noticeId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/notice/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** list GET /notice/list */
export async function listUsingGET6(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET6Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/notice/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}
