declare namespace API {
  type CodeValue = {
    k?: string;
    l?: string;
    v?: string;
  };

  type findByIdOrderParams = {
    /** id */
    id: number;
  };

  type findByIdUsingGET1Params = {
    /** id */
    id: number;
  };

  type findByIdUsingGETParams = {
    /** id */
    id: number;
  };

  type invalidOrderLifecycleUsingPOSTParams = {
    /** id */
    id: number;
  };

  type invalidOrderParams = {
    /** id */
    id: number;
  };

  type invalidReviseRecordUsingPOSTParams = {
    /** id */
    id: number;
  };

  type JsonObject = {
    code?: number;
    msg?: string;
    result?: Record<string, any>;
    success?: boolean;
  };

  type JsonObjectlong = {
    code?: number;
    msg?: string;
    result?: number;
    success?: boolean;
  };

  type JsonObjectOrderBaseResponse = {
    code?: number;
    msg?: string;
    result?: OrderBaseResponse;
    success?: boolean;
  };

  type JsonObjectOrderLifecycleResponse = {
    code?: number;
    msg?: string;
    result?: OrderLifecycleResponse;
    success?: boolean;
  };

  type JsonObjectReviseRecordResponse = {
    code?: number;
    msg?: string;
    result?: ReviseRecordResponse;
    success?: boolean;
  };

  type JsonObjectstring = {
    code?: number;
    msg?: string;
    result?: string;
    success?: boolean;
  };

  type JsonObjectTableDataInfo = {
    code?: number;
    msg?: string;
    result?: TableDataInfo;
    success?: boolean;
  };

  type OrderBaseCreateRequest = {
    attrs?: CodeValue[];
    orderItemModelList?: OrderItemModel[];
    orderType?: number;
    realAmount?: number;
    totalAmount?: number;
    userId?: number;
  };

  type OrderBaseQueryRequest = {
    orderType?: number;
    userId?: number;
  };

  type OrderBaseResponse = {
    accountId?: number;
    attrs?: CodeValue[];
    createdAt?: number;
    flowNo?: number;
    id?: number;
    invoiceFlag?: 'INVALID' | 'VALID';
    orderState?: number;
    orderType?: number;
    payList?: PayItem[];
    payTime?: number;
    totalAmount?: number;
    updatedAt?: number;
    validStatus?: 'INVALID' | 'VALID';
    version?: number;
    waitPay?: number;
  };

  type OrderBaseUpdateRequest = {
    attrs?: CodeValue[];
    id?: number;
    orderItemModelList?: OrderItemModel[];
    realAmount?: number;
    totalAmount?: number;
    userId?: number;
  };

  type orderCancleParams = {
    /** id */
    id: number;
  };

  type orderCompleteParams = {
    /** id */
    id: number;
  };

  type OrderItemModel = {
    feeRemark?: string;
    itemCount?: number;
    productName?: string;
    realAmount?: number;
    skuId?: number;
  };

  type OrderLifecycleCreateRequest = {
    flowNo?: number;
    operateType?: number;
    operateUser?: string;
    remark?: string;
  };

  type OrderLifecycleQueryRequest = true;

  type OrderLifecycleResponse = {
    createdAt?: number;
    flowNo?: number;
    id?: number;
    operateType?: number;
    operateUser?: string;
    remark?: string;
    updatedAt?: number;
    validStatus?: 'INVALID' | 'VALID';
    version?: number;
  };

  type OrderLifecycleUpdateRequest = {
    flowNo?: number;
    id?: number;
    operateType?: number;
    operateUser?: string;
    remark?: string;
  };

  type PayItem = {
    money?: number;
    payGroup?: 'BANK' | 'COUPON' | 'PLATFORM_PAY' | 'THIRD_PAY' | 'VIRTUAL_PROPERTY';
    payType?: 'ACTIVITY' | 'ALIPAY' | 'COIN' | 'WECHAT';
  };

  type ReviseRecordCreateRequest = {
    diff?: string;
    flowNo?: number;
    operateUser?: string;
    reviseAfter?: string;
    reviseBefore?: string;
    reviseReason?: string;
    tableName?: string;
  };

  type ReviseRecordQueryRequest = {
    flowNo?: number;
    tableName?: string;
  };

  type ReviseRecordResponse = {
    createdAt?: number;
    diff?: string;
    flowNo?: number;
    id?: number;
    operateUser?: string;
    reviseAfter?: string;
    reviseBefore?: string;
    reviseReason?: string;
    tableName?: string;
    updatedAt?: number;
    validStatus?: 'INVALID' | 'VALID';
    version?: number;
  };

  type ReviseRecordUpdateRequest = {
    diff?: string;
    flowNo?: number;
    id?: number;
    operateUser?: string;
    reviseAfter?: string;
    reviseBefore?: string;
    reviseReason?: string;
    tableName?: string;
  };

  type TableDataInfo = {
    code?: number;
    msg?: string;
    rows?: Record<string, any>[];
    total?: number;
  };

  type validOrderLifecycleUsingPOSTParams = {
    /** id */
    id: number;
  };

  type validOrderParams = {
    /** id */
    id: number;
  };

  type validReviseRecordUsingPOSTParams = {
    /** id */
    id: number;
  };
}
