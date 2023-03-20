import type { EditableProTableProps } from '@ant-design/pro-table/lib/components/EditableTable';
import { Button, Result } from 'antd';
import React from 'react';
import { history } from 'umi';

const NoFoundPage: React.FC<EditableProTableProps<any, any>> = (props) => {
  const { ...notFoundProps } = props;
  return (
    <Result
      {...notFoundProps}
      status="404"
      title="404"
      subTitle="Sorry, the page you visited does not exist."
      extra={
        <Button type="primary" onClick={() => history.push('/')}>
          Back Home
        </Button>
      }
    />
  );
};

export default NoFoundPage;
