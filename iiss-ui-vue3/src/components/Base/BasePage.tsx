import type { PageContainerProps } from '@ant-design/pro-layout';
import { PageContainer } from '@ant-design/pro-layout';
import React from 'react';

const BasePage: React.FC<PageContainerProps> = (props) => {
  return <PageContainer title={false} {...props} />;
};

export default BasePage;
