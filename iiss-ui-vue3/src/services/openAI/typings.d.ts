declare namespace API {
  type ChatRequest = {
    msg?: string;
  };

  type ChatResponse = {
    question_tokens?: number;
  };

  type closeConnectUsingGETParams = {
    /** headers */
    headers: string;
  };

  type createConnectUsingGETParams = {
    /** headers */
    headers: string;
  };

  type getChatParams = {
    /** message */
    message?: string;
  };

  type JsonObjectListOpenAiResponse = {
    code?: number;
    msg?: string;
    result: OpenAiResponse[];
    success?: boolean;
  };

  type OpenAiResponse = {
    content: string;
    createdAt: number;
    id: number;
    updatedAt?: number;
    user?: boolean;
    userId: number;
    version?: number;
  };

  type sseChatUsingPOSTParams = {
    /** headers */
    headers: string;
  };

  type SseEmitter = {
    timeout?: number;
  };
  type SseID = {
    uid: string;
  };
}
