// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** forceLogout DELETE /online/${param0} */
export async function forceLogoutUsingDELETE(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.forceLogoutUsingDELETEParams,
  options?: { [key: string]: any },
) {
  const { tokenId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/online/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** list GET /online/list */
export async function listUsingGET11(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.listUsingGET11Params,
  options?: { [key: string]: any },
) {
  return request<API.TableDataInfo>('/online/list', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}
