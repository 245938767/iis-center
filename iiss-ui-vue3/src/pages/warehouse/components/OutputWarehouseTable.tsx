import FormEditableTable from '@/components/ProForm/FormEditableTable';
import type { ProColumns } from '@ant-design/pro-table';
import type { EditableFormInstance, EditableProTableProps } from '@ant-design/pro-table/lib/components/EditableTable';
import { map } from 'lodash';
import React, { useMemo } from 'react';
import {
  OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM,
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
  PRODUCT_PRICE_TAX_COLUMNS,
  WAREHOUSE_OPTION_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  WAREHOUSE_PRODUCT_BASE_COLUMNS,
} from '../constants';

type OutputWarehouseTablePorps = {
  warehouseType?: OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM;
  readonly?: boolean;
  editAccess?: boolean;
  optionClomuns?: boolean;
} & EditableProTableProps<any, any>;

const DEFAULT_ROW_KEY = 'productId';

const OutputWarehouseTable: React.FC<OutputWarehouseTablePorps> = (props) => {
  const { editAccess, optionClomuns, warehouseType, ...resetProps } = props;
  const editorFormRef = React.useRef<EditableFormInstance<any>>();

  const salesDeliveryColumns = useMemo<ProColumns[]>(() => {
    return [
      { ...PRODUCT_PRICE_COLUMNS, editable: () => !!editAccess },
      ...PRODUCT_PRICE_TAX_COLUMNS.map((item) => {
        return {
          ...item,
          editable: () => {
            if (item.editable === false) return false;
            return !!editAccess;
          },
        };
      }),
    ];
  }, [editAccess]);

  const productionRequisitionColumns = useMemo<ProColumns[]>(() => {
    const colmuns: ProColumns[] = [
      {
        title: '是否为订单产品',
        dataIndex: 'isOrderProduct',
        search: false,
        width: 140,
        valueType: 'select',
        initialValue: true,
        fieldProps(form, { rowIndex }) {
          return {
            options: [
              { label: '是', value: true },
              { label: '否', value: false },
            ],
            onChange: (value: boolean) => {
              if (value === true) {
                editorFormRef.current?.setRowData?.(rowIndex, { orderNo: undefined });
              }
            },
          };
        },
      },
      {
        title: '订单号',
        dataIndex: 'orderNo',
        valueType: 'text',
        search: false,
        formItemProps: { rules: [{ required: true }] },
        editable: (_, record) => {
          return record.isOrderProduct !== false;
        },
      },
    ];
    return colmuns;
  }, []);

  const columnsMap = useMemo(() => {
    const cmap = new Map();
    cmap.set(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.XIAO_SHOU_CHU_KU, salesDeliveryColumns);
    cmap.set(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.SHENG_CHAN_LING_YONG, productionRequisitionColumns);
    cmap.set(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.TIAO_CANG, []);
    cmap.set(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.WAI_FA_JIA_GONG, []);
    return cmap;
  }, [productionRequisitionColumns, salesDeliveryColumns]);

  const colmuns = useMemo<ProColumns[]>(() => {
    const innerColmuns: ProColumns[] = [
      ...WAREHOUSE_PRODUCT_BASE_COLUMNS,
      { ...WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS, editable: false },
      { ...PRODUCT_NUM_COLUMNS },
      ...(columnsMap.get(warehouseType) || []),
    ];

    if (props.optionClomuns === true) {
      innerColmuns.push(WAREHOUSE_OPTION_COLUMNS);
    }

    if (props.readonly) {
      innerColmuns.forEach((item) => {
        item.editable = false;
      });
    }

    return innerColmuns;
  }, [columnsMap, props.optionClomuns, props.readonly, warehouseType]);

  const actions = useMemo(() => {
    return [
      (value: any) => {
        const newValue = map(value, (item) => {
          if (warehouseType !== OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.XIAO_SHOU_CHU_KU) {
            return {
              ...item,
              price: undefined,
              taxRate: undefined,
              tax: undefined,
              amount: undefined,
            };
          }
          return item;
        });
        return newValue;
      },
    ];
  }, [warehouseType]);

  return (
    <FormEditableTable
      rowKey={DEFAULT_ROW_KEY}
      scroll={{ x: 'max-content', y: 320 }}
      columns={colmuns}
      bordered
      {...resetProps}
      editable={{
        type: 'multiple',
        ...resetProps.editable,
      }}
      actions={actions}
      defaultEditAll
    />
  );
};

export default OutputWarehouseTable;
