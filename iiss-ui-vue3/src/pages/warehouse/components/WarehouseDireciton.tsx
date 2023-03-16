import { SwapRightOutlined } from '@ant-design/icons';
import type { SpaceProps } from 'antd';
import { Space } from 'antd';
import React from 'react';

type WarehouseDirecitonProps = {
  from: string;
  to: string;
} & Partial<SpaceProps>;

const WarehouseDireciton: React.FC<WarehouseDirecitonProps> = (props) => {
  const { from, to, ...reset } = props;

  return (
    <Space {...reset}>
      <span>{from}</span>
      <SwapRightOutlined style={{ color: 'blue', fontSize: '32px', fontWeight: 'bold' }} />
      <span>{to}</span>
    </Space>
  );
};

export default WarehouseDireciton;
