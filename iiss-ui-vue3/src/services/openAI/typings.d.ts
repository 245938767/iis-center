declare namespace API {
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
    updatedAt: number;
    user: boolean;
    userId: number;
    version: number;
  };
}
