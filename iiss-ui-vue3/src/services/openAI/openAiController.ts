// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';
/** 发送问题 GET /openai/v1/getChat */
export async function getChat(
  // 叠加生成的Param类型 (非body参数swagger默认没有生成对象)
  params: API.getChatParams,
  options?: { [key: string]: any },
) {
  return request<Record<string, any>>('/openAI/openai/v1/getChat', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** 获得用户聊天记录 GET /openai/v1/getinfo */
export async function getInfo(options?: { [key: string]: any }) {
  return request<API.JsonObjectListOpenAiResponse>('/openAI/openai/v1/getinfo', {
    method: 'GET',
    ...(options || {}),
  });
}
