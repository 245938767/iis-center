import { Avatar, Space } from 'antd';
import {ProColumns} from "@ant-design/pro-table";
import { ReactChild, ReactFragment, ReactPortal, Key } from 'react';

export enum INPUT_WAREHOUSE_TYPE_ENUM {
  PURCHASE_RECEIPT = 1,
  PRODUCTION_WAREHOUSING = 2,
}

export const INPUT_WAREHOUSE_TYPE_MAP = new Map([
  [INPUT_WAREHOUSE_TYPE_ENUM.PURCHASE_RECEIPT, '外购入库'],
  [INPUT_WAREHOUSE_TYPE_ENUM.PRODUCTION_WAREHOUSING, '生产入库'],
]);

export const INPUT_WAREHOUSE_TYPE_OPTIONS = Array.from(INPUT_WAREHOUSE_TYPE_MAP).map((item) => ({
  value: item[0],
  label: item[1],
}));


export enum INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM {
  YI_HAO_PIN = 1,
  ZHU_LIAO = 2,
  CHAN_CHENG_PIN = 3,
  WEI_XIU_PEI_JIAN = 4,
  XIAO_SHOU_SHANG_PIN = 5,
  FU_LIAO = 6,
}

export const INPUT_WAREHOUSE_PRODUCT_TYPE_MAP = new Map([
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.YI_HAO_PIN, '易耗品'],
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.ZHU_LIAO, '主料'],
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.CHAN_CHENG_PIN, '产成品'],
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.WEI_XIU_PEI_JIAN, '维修配件'],
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.XIAO_SHOU_SHANG_PIN, '销售商品'],
  [INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.FU_LIAO, '辅料'],
]);

export const INPUT_WAREHOUSE_PRODUCT_TYPE_OPTIONS = Array.from(
  INPUT_WAREHOUSE_PRODUCT_TYPE_MAP,
).map((item) => ({
  value: item[0],
  label: item[1],
}));

export enum OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM {
  XIAO_SHOU_CHU_KU = 1,
  SHENG_CHAN_LING_YONG = 2,
  TIAO_CANG = 3,
  WAI_FA_JIA_GONG = 4,
}

export const OUTPUT_WAREHOUSE_PRODUCT_TYPE_MAP = new Map([
  [OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.XIAO_SHOU_CHU_KU, '销售出库'],
  [OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.SHENG_CHAN_LING_YONG, '生产领用'],
  [OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.TIAO_CANG, '调仓'],
  [OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.WAI_FA_JIA_GONG, '外发加工'],
]);

export const OUTPUT_WAREHOUSE_PRODUCT_TYPE_OPTIONS = Array.from(
  OUTPUT_WAREHOUSE_PRODUCT_TYPE_MAP,
).map((item) => ({
  value: item[0],
  label: item[1],
}));

// /** 1-入库状态 2-出库状态 3-调仓状态 */
export enum WAREHOUSE_RECORD_STATUS_ENUM {
  RU_KU = 1,
  CHU_KU = 2,
  TIAO_CANG = 3,
}

export const WAREHOUSE_PRODUCT_BASE_COLUMNS: ProColumns[] = [
  {
    title: '商品图片',
    search: false,
    editable: false,
    width: 160,
    dataIndex: 'productImg',
    render: (text) => <Avatar shape="square" size="large" src={text}/>,
  },
  {
    title: '编号',
    dataIndex: 'productCode',
    search: false,
    editable: false,
    width: 120,
  },
  {
    title: '商品名称',
    dataIndex: 'productName',
    width: 120,
    search: false,
    editable: false,
  },
  {
    title: '规格',
    dataIndex: 'productSpecification',
    search: false,
    editable: false,
    width: 100,
  },
];

export const WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS: ProColumns = {
  title: '商品属性',
  dataIndex: 'productAttrValue',
  search: false,
  valueEnum: INPUT_WAREHOUSE_PRODUCT_TYPE_MAP,
  width: 140,
  formItemProps: {rules: [{required: true}]},
};

export const PRODUCT_NUM_COLUMNS: ProColumns = {
  title: '数量',
  dataIndex: 'productNum',
  valueType: 'digit',
  search: false,
  align: 'right',
  width: 80,
  fieldProps: {min: 1},
  formItemProps: {initialValue: 1},
};

export const PRODUCT_PRICE_COLUMNS: ProColumns = {
  title: '单价',
  dataIndex: 'price',
  valueType: 'money',
  search: false,
  align: 'right',
  width: 100,
};

export const PRODUCT_PRICE_TAX_COLUMNS: ProColumns[] = [
  {
    title: '税率',
    dataIndex: 'taxRate',
    valueType: {
      type: 'percent',
      precision: 2,
    },
    search: false,
    align: 'right',
    width: 100,
  },
  {
    title: '税款',
    dataIndex: 'tax',
    valueType: 'money',
    search: false,
    align: 'right',
    width: 100,
  },
  {
    title: '金额',
    dataIndex: 'amount',
    valueType: 'money',
    search: false,
    align: 'right',
    width: 100,
  },
];

export const WAREHOUSE_OPTION_COLUMNS: ProColumns = {
  title: '操作',
  valueType: 'option',
  fixed: 'right',
  width: 80,
};

export const WAREHOUSE_PRODUCT_IMAGE_COLUMNS: ProColumns = {
  title: '商品图片',
  dataIndex: 'warehouseProductImgList',
  valueType: 'image',
  search: false,
  width: 160,
  render(dom, entity) {
    return (
      <Space>
        {entity.warehouseProductImgList.map((item: boolean | ReactChild | ReactFragment | ReactPortal | null | undefined, index: Key | null | undefined) => {
          // eslint-disable-next-line react/no-array-index-key
          return <Avatar shape="square" key={index} src={item} size="large" />;
        })}
      </Space>
    );
  },
};

export const WAREHOUSE_PRODUCT_COLUMNS: ProColumns[] = [
  ...WAREHOUSE_PRODUCT_BASE_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
];

export const INPUT_WAREHOUSE_COLUMNS: ProColumns[] = [
  WAREHOUSE_PRODUCT_IMAGE_COLUMNS,
  {
    title: '入库单号',
    dataIndex: 'warehouseOrder',
    valueType: 'text',
  },
  {
    title: '入库仓',
    dataIndex: 'warehouseName',
    valueType: 'text',
  },
  {
    title: '入库方式',
    dataIndex: 'warehouseType',
    valueEnum: INPUT_WAREHOUSE_TYPE_MAP,
  },
  {
    title: '库存总金额',
    dataIndex: 'warehouseAmount',
    valueType: 'money',
    align: 'right',
  },
  {
    title: '入库时间',
    dataIndex: 'updateTime',
    valueType: 'dateTime',
    search: false,
  },
  {
    title: '操作人',
    dataIndex: 'createUserName',
  },
];

export const OUTPUT_WAREHOUSE_COLUMNS: ProColumns[] = [
  WAREHOUSE_PRODUCT_IMAGE_COLUMNS,
  {
    title: '出库单号',
    dataIndex: 'warehouseOrder',
    valueType: 'text',
  },
  {
    title: '出库仓',
    dataIndex: 'warehouseName',
    valueType: 'text',
  },
  {
    title: '出库方式',
    dataIndex: 'warehouseType',
    valueEnum: OUTPUT_WAREHOUSE_PRODUCT_TYPE_MAP,
  },
  {
    title: '库存总金额',
    dataIndex: 'warehouseAmount',
    valueType: 'money',
    align: 'right',
  },
  {
    title: '出库时间',
    dataIndex: 'updateTime',
    valueType: 'dateTime',
    search: false,
  },
  {
    title: '操作人',
    dataIndex: 'createUserName',
  },
];
