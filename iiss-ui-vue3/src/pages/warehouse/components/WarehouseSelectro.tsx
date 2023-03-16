import { getTreeList } from '@/services/warehouse/warehouseController';
import { ProFormCascader } from '@ant-design/pro-form';
import { last } from 'lodash';
import React from 'react';

type WarehouseSelectroProps = Partial<React.ComponentProps<typeof ProFormCascader>>;

const WarehouseSelectro: React.FC<WarehouseSelectroProps> = (props) => {
  const { fieldProps, ...restProps } = props;

  return (
    <ProFormCascader
      width="md"
      transform={(value, namePath) => {
        return { [namePath]: last(value) };
      }}
      request={async () => {
        return getTreeList().then((resp) => {
          if (!resp) return [];
          return resp.data;
        });
      }}
      rules={[{ required: true }]}
      {...restProps}
      fieldProps={{
        fieldNames: { label: 'warehouseName', value: 'id' },
        ...fieldProps,
      }}
    />
  );
};

export default WarehouseSelectro;
