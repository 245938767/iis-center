// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 创建订单 POST /orderBase/v1/createOrderBase */
export async function createorder(
  body: API.OrderBaseCreateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectlong>('/trade/orderBase/v1/createOrderBase', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 查询订单 GET /orderBase/v1/findById/${param0} */
export async function findByIdOrder(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.findByIdOrderParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectOrderBaseResponse>(`/trade/orderBase/v1/findById/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 分页查询订单 POST /orderBase/v1/findByPage */
export async function findByPageOrder(
  body: API.OrderBaseQueryRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectTableDataInfo>('/trade/orderBase/v1/findByPage', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 取消订单 POST /orderBase/v1/invalid/${param0} */
export async function invalidOrder(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.invalidOrderParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/trade/orderBase/v1/invalid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 订单取消 GET /orderBase/v1/orderCancle/${param0} */
export async function orderCancle(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.orderCancleParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObject>(`/trade/orderBase/v1/orderCancle/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 订单完成 GET /orderBase/v1/orderComplete/${param0} */
export async function orderComplete(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.orderCompleteParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObject>(`/trade/orderBase/v1/orderComplete/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 更新订单 POST /orderBase/v1/updateOrderBase */
export async function updateOrder(
  body: API.OrderBaseUpdateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectstring>('/trade/orderBase/v1/updateOrderBase', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 校验订单 POST /orderBase/v1/valid/${param0} */
export async function validOrder(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.validOrderParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/trade/orderBase/v1/valid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}
