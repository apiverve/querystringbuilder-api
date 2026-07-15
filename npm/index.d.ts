declare module '@apiverve/querystringbuilder' {
  export interface querystringbuilderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface querystringbuilderResponse {
    status: string;
    error: string | null;
    data: QueryStringBuilderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface QueryStringBuilderData {
      queryString: null | string;
      fullURL:     null | string;
      encoded:     boolean | null;
      paramCount:  number | null;
  }

  export default class querystringbuilderWrapper {
    constructor(options: querystringbuilderOptions);

    execute(callback: (error: any, data: querystringbuilderResponse | null) => void): Promise<querystringbuilderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: querystringbuilderResponse | null) => void): Promise<querystringbuilderResponse>;
    execute(query?: Record<string, any>): Promise<querystringbuilderResponse>;
  }
}
