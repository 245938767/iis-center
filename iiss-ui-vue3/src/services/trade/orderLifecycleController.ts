// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** createOrderLifecycle POST /orderLifecycle/v1/createOrderLifecycle */
export async function createOrderLifecycleUsingPOST(
  body: API.OrderLifecycleCreateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectlong>('/orderLifecycle/v1/createOrderLifecycle', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** findById GET /orderLifecycle/v1/findById/${param0} */
export async function findByIdUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.findByIdUsingGETParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectOrderLifecycleResponse>(`/orderLifecycle/v1/findById/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** findByPage POST /orderLifecycle/v1/findByPage */
export async function findByPageUsingPOST(
  body: API.OrderLifecycleQueryRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectTableDataInfo>('/orderLifecycle/v1/findByPage', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** invalidOrderLifecycle POST /orderLifecycle/v1/invalid/${param0} */
export async function invalidOrderLifecycleUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.invalidOrderLifecycleUsingPOSTParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/orderLifecycle/v1/invalid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** updateOrderLifecycle POST /orderLifecycle/v1/updateOrderLifecycle */
export async function updateOrderLifecycleUsingPOST(
  body: API.OrderLifecycleUpdateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectstring>('/orderLifecycle/v1/updateOrderLifecycle', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** validOrderLifecycle POST /orderLifecycle/v1/valid/${param0} */
export async function validOrderLifecycleUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.validOrderLifecycleUsingPOSTParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/orderLifecycle/v1/valid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}
