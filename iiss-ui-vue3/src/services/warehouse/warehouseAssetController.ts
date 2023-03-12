// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** 获得仓库中的商品数据 POST /warehouseAsset/v1/getByPage */
export async function getByWarehouseForGoods(
  body: API.WarehouseAssetRequest,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/warehouse/warehouseAsset/v1/getByPage', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}
