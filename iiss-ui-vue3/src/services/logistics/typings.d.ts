declare namespace API {
  type JsonObjectboolean = {
    code?: number;
    msg?: string;
    result?: boolean;
    success?: boolean;
  };

  type LogisicsProductRequest = {
    num?: number;
    productId?: number;
  };

  type LogisticsCreateRequest = {
    consigneeWarehouseId?: number;
    flowNo?: number;
    freight?: number;
    logisicsProductRequests?: LogisicsProductRequest[];
    shipWarehouseId?: number;
  };

  type LogisticsUpdateRequest = {
    consigneeWarehouseId?: number;
    flowNo?: number;
    freight?: number;
    shipWarehouseId?: number;
  };

  type TableDataInfo = {
    code?: number;
    msg?: string;
    rows?: Record<string, any>[];
    total?: number;
  };
}
