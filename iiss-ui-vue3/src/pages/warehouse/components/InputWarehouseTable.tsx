import FormEditableTable from '@/components/ProForm/FormEditableTable';
import type { ProColumns } from '@ant-design/pro-table';
import type { EditableProTableProps } from '@ant-design/pro-table/lib/components/EditableTable';
import { map } from 'lodash';
import React from 'react';
import {
  INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM,
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
  PRODUCT_PRICE_TAX_COLUMNS,
  WAREHOUSE_OPTION_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  WAREHOUSE_PRODUCT_BASE_COLUMNS,
} from '../constants';

type InputWarehouseTablePorps = {
  readonly?: boolean;
  editAccess?: boolean;
  optionClomuns?: boolean;
} & EditableProTableProps<any, any>;

const DEFAULT_ROW_KEY = 'productId';

const InputWarehouseTable: React.FC<InputWarehouseTablePorps> = (props) => {
  const { editAccess, optionClomuns, ...resetProps } = props;

  const colmuns = React.useMemo<ProColumns[]>(() => {
    const hasChanChengPing = (
      value: any,
      record: { warehouseAssetBizType: INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM },
    ) => {
      if (record.warehouseAssetBizType === INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.CHAN_CHENG_PIN) {
        return false;
      }
      return !!editAccess;
    };

    const innerColmuns: ProColumns[] = [
      ...WAREHOUSE_PRODUCT_BASE_COLUMNS,
      { ...WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS },
      { ...PRODUCT_NUM_COLUMNS },
      {
        ...PRODUCT_PRICE_COLUMNS,
        editable: hasChanChengPing,
      },
      ...PRODUCT_PRICE_TAX_COLUMNS.map((item) => {
        return {
          ...item,
          editable: (value: any, record: any) => {
            if (item.editable === false) return false;
            return hasChanChengPing(value, record);
          },
        };
      }),
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
  }, [editAccess, props.optionClomuns, props.readonly]);

  const actions = React.useMemo(() => {
    return [
      (value: any) => {
        const newValue = map(value, (item) => {
          if (item.warehouseAssetBizType === INPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.CHAN_CHENG_PIN) {
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
  }, []);

  return (
    <FormEditableTable
      rowKey={DEFAULT_ROW_KEY}
      scroll={{ x: 'max-content', y: 320 }}
      columns={colmuns}
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

export default InputWarehouseTable;
