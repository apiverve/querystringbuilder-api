declare module '@apiverve/querystringbuilder' {
  export interface querystringbuilderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface querystringbuilderResponse {
    status: string;
    error: string | null;
    data: QueryStringBuilderData;
    code?: number;
  }


  interface QueryStringBuilderData {
      queryString: string;
      fullURL:     string;
      encoded:     boolean;
      paramCount:  number;
  }

  export default class querystringbuilderWrapper {
    constructor(options: querystringbuilderOptions);

    execute(callback: (error: any, data: querystringbuilderResponse | null) => void): Promise<querystringbuilderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: querystringbuilderResponse | null) => void): Promise<querystringbuilderResponse>;
    execute(query?: Record<string, any>): Promise<querystringbuilderResponse>;
  }
}
