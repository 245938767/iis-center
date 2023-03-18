// @ts-ignore
/* eslint-disable */
import { request } from 'umi';

/** profile GET /user/profile */
export async function profileUsingGET(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user/profile', {
    method: 'GET',
    ...(options || {}),
  });
}

/** updateProfile PUT /user/profile */
export async function updateProfileUsingPUT(body: API.SysUser, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user/profile', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** avatar POST /user/profile/avatar */
export async function avatarUsingPOST(body: string, options?: { [key: string]: any }) {
  return request<Record<string, any>>('/user/profile/avatar', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** updatePwd PUT /user/profile/updatePwd */
export async function updatePwdUsingPUT(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.updatePwdUsingPUTParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/user/profile/updatePwd', {
    method: 'PUT',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}
