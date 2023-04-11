// @ts-ignore
/* eslint-disable */
// import request from '@/utils/request';

import request from "umi-request";

/** 获得编号信息 GET /asset/v1/get/${param0} */
export async function getPOISearch(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.MapPOI,
  options?: { [key: string]: any },
) {
  const {  ...queryParams } = params;
  return request<Record<string, any>>(`https://restapi.amap.com/v3/place/text?key=ae6d6658a2f94a3d0ed6a1c88ea51453`, {
    method: 'GET',
    params: { ...queryParams },
    ...(options || {}),
  });
}