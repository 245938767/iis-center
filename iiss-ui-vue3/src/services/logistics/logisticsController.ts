// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 创建 POST /logistics/v1/create */
export async function create(body: API.LogisticsCreateRequest, options?: { [key: string]: any }) {
  return request<API.JsonObjectboolean>('/logistics/logistics/v1/create', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 详细信息 POST /logistics/v1/getLogisticsDetail/${param0} */
export async function detail(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.detailParams,
  options?: { [key: string]: any },
) {
  const { id: param0, ...queryParams } = params;
  return request<API.JsonObjectLogisticsDetailResponse>(
    `/logistics/logistics/v1/getLogisticsDetail/${param0}`,
    {
      method: 'POST',
      params: { ...queryParams },
      ...(options || {}),
    },
  );
}

/** 此处后端没有提供注释 POST /logistics/v1/getPageList */
export async function list(options?: { [key: string]: any }) {
  return request<API.TableDataInfo>('/logistics/logistics/v1/getPageList', {
    method: 'POST',
    ...(options || {}),
  });
}

/** 更新状态 POST /logistics/v1/update */
export async function update(body: API.LogisticsUpdateRequest, options?: { [key: string]: any }) {
  return request<API.JsonObjectboolean>('/logistics/logistics/v1/update', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
