// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 获得商品的生命周期数据 GET /warehouse/lifecycle/v1/getByBatch/${param0} */
export async function getByBatchNoUsingGET(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getByBatchNoUsingGETParams,
  options?: { [key: string]: any },
) {
  const { warehouseAssetId: param0, ...queryParams } = params;
  return request<Record<string, any>>(`/warehouse/lifecycle/v1/getByBatch/${param0}`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}
