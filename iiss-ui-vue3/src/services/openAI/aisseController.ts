// @ts-ignore
/* eslint-disable */
import request from '@/utils/request';

/** sseChat POST /openai/sse/v1/chat */
export async function sseChatUsingPOST(body: API.ChatRequest, options?: { [key: string]: any }) {
  return request<API.ChatResponse>('/openAI/openai/sse/v1/chat', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    data: body,
    ...(options || {}),
  });
}

/** closeConnect GET /openai/sse/v1/closeSse */
export async function closeConnectUsingGET(options?: { [key: string]: any }) {
  return request<any>('/openAI/openai/sse/v1/closeSse', {
    method: 'GET',
    ...(options || {}),
  });
}

/** createConnect GET /openai/sse/v1/createSse */
export async function createConnectUsingGET(uid: API.SseID, options?: { [key: string]: any }) {
  return new EventSource('openAI/openai/sse/v1/createSse?uid=' + uid, {
    // Headers:{
    //  'Authorization':`Bearer ${accessToken}`
    // }
  });
  // return request<API.SseEmitter>('/openAI/openai/sse/v1/createSse/' + uid.uid, {
  //   method: 'GET',
  //   headers: {
  //     Accept: 'text/event-stream',
  //     'Cache-Control': 'no-cache',
  //     Connection: 'keep-alive',
  //   },
  //   ...(options || {}),
  // });
}
