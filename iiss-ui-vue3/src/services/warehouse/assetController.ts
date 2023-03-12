// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 获得编号信息 GET /asset/v1/get/${param0} */
export async function getByBatchNo(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getByBatchNoParams,
  options?: { [key: string]: any },
) {
  const { batchNo: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/asset/v1/get/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}

/** 获得分页数据 POST /asset/v1/getPage */
export async function getByPage(body: API.AssetQueryRequest, options?: { [key: string]: any }) {
  return request<API.TableDataInfo>('/asset/v1/getPage', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 创建入库 POST /asset/v1/saveIn */
export async function assetCreateIn(
  body: API.AssetCreateRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/asset/v1/saveIn', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 创建出库 POST /asset/v1/saveOut */
export async function assetCreateOut(
  body: API.AssetCreateRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/warehouse/asset/v1/saveOut', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** 转仓 POST /asset/v1/translation */
export async function translationWarehouse(
  body: API.AssetTranslationRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/warehouse/asset/v1/translation', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
