import { ProFormDependency, ProFormMoney } from '@ant-design/pro-form';
import { Space, Typography } from 'antd';
import type { NamePath } from 'antd/lib/form/interface';
import { get, reduce } from 'lodash';

type TableHeaderProps = {
  title?: string;
  tableName: NamePath[];
};

const TableHeader: React.FC<TableHeaderProps> = (props) => {
  return (
    <ProFormDependency name={props.tableName}>
      {(values) => {
        const table = get(values, props.tableName as any);
        const totalAmount = reduce(
          table,
          (prev, curr) => {
            return prev + (curr?.amount || 0);
          },
          0,
        );
        return (
          <Space align="baseline" size={24}>
            <Typography.Title level={5}>{props.title ? props.title : '商品列表'}</Typography.Title>
            <Typography.Text>共 {table?.length || 0} 条商品记录</Typography.Text>
            {totalAmount > 0 && (
              <Typography.Text>
                库存总金额: <ProFormMoney readonly noStyle fieldProps={{ value: totalAmount }} />
              </Typography.Text>
            )}
          </Space>
        );
      }}
    </ProFormDependency>
  );
};

export default TableHeader;
