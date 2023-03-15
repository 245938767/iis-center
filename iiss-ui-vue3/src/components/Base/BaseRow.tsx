import { Row } from 'antd';
import React from 'react';

export default function BaseRow(props: React.ComponentProps<typeof Row>) {
  return <Row {...props} gutter={20} />;
}
