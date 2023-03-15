import { Col } from 'antd';
import React from 'react';

export default function BaseCol(props: React.ComponentProps<typeof Col>) {
  return <Col lg={8} md={12} sm={24} {...props} />;
}
