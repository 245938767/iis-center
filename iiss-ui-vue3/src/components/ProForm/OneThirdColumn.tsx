import { Col } from 'antd';
import React from 'react';

export default function OneThirdColumn(props: React.ComponentProps<typeof Col>) {
  return <Col span={8} {...props} />;
}
