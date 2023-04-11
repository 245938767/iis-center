declare namespace API {
  type MapPOI={
    /** 关键字 */
    keywords: string;
    /** POI类型 */
    types?: string;
    /** 城市 */
    city?: string;
    /** 展示层级数 */
    children?: number;
    offset?: number=20;
    page?: number=1;
    extensions?: string=all;

  };
}
