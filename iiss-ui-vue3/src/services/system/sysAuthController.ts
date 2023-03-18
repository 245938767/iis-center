// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** authBinding GET /system/auth/binding/${param0} */
export async function authBindingUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.authBindingUsingGETParams,
  options?: { [key: string]: any },
) {
  const { source: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/system/system/auth/binding/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** socialLogin GET /system/auth/social-login/${param0} */
export async function socialLoginUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.socialLoginUsingGETParams,
  options?: { [key: string]: any },
) {
  const { source: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/system/system/auth/social-login/${param0}`, {
    method: 'GET',
    params: {
      ...queryParams,
    },
    ...(options || {}),
  });
}

/** unlockAuth DELETE /system/auth/unlock/${param0} */
export async function unlockAuthUsingDELETE(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.unlockAuthUsingDELETEParams,
  options?: { [key: string]: any },
) {
  const { authId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/system/system/auth/unlock/${param0}`, {
    method: 'DELETE',
    params: { ...queryParams },
    ...(options || {}),
  });
}
