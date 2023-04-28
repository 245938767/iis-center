// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** createReviseRecord POST /reviseRecord/v1/createReviseRecord */
export async function createReviseRecordUsingPOST(
  body: API.ReviseRecordCreateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectlong>('/reviseRecord/v1/createReviseRecord', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** findById GET /reviseRecord/v1/findById/${param0} */
export async function findByIdUsingGET1(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.findByIdUsingGET1Params,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectReviseRecordResponse>(`/reviseRecord/v1/findById/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** findByPage POST /reviseRecord/v1/findByPage */
export async function findByPageUsingPOST1(
  body: API.ReviseRecordQueryRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectTableDataInfo>('/reviseRecord/v1/findByPage', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** invalidReviseRecord POST /reviseRecord/v1/invalid/${param0} */
export async function invalidReviseRecordUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.invalidReviseRecordUsingPOSTParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/reviseRecord/v1/invalid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** updateReviseRecord POST /reviseRecord/v1/updateReviseRecord */
export async function updateReviseRecordUsingPOST(
  body: API.ReviseRecordUpdateRequest,
  options?: { [key: string]: any },
) {
  return request<API.JsonObjectstring>('/reviseRecord/v1/updateReviseRecord', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** validReviseRecord POST /reviseRecord/v1/valid/${param0} */
export async function validReviseRecordUsingPOST(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.validReviseRecordUsingPOSTParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectstring>(`/reviseRecord/v1/valid/${param0}`, {
    method: 'POST',
    params: { ...queryParams },
    ...(options || {}),
  });
}
