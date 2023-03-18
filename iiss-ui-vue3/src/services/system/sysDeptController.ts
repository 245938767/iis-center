// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** edit PUT /dept */
export async function editUsingPUT1(body: API.SysDept, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dept', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** add POST /dept */
export async function addUsingPOST1(body: API.SysDept, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/dept', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** getInfo GET /dept/${param0} */
export async function getInfoUsingGET1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getInfoUsingGET1Params,
  options?: { [key: string]: any },
) {
  const { deptId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dept/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** remove DELETE /dept/${param0} */
export async function removeUsingDELETE1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.removeUsingDELETE1Params,
  options?: { [key: string]: any },
) {
  const { deptId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dept/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** list GET /dept/list */
export async function listUsingGET1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET1Params,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/dept/list', {
    method: 'GET',
    params: {
      ...params,
      params: undefined,
      ...params['params'],
    },
    ...(options || {}),
  });
}

/** excludeChild GET /dept/list/exclude/${param0} */
export async function excludeChildUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.excludeChildUsingGETParams,
  options?: { [key: string]: any },
) {
  const { deptId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/dept/list/exclude/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}
