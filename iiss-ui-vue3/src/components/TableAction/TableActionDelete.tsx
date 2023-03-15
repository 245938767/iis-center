import { DeleteOutlined } from '@ant-design/icons';
import type { PopconfirmProps } from 'antd';
import { Popconfirm } from 'antd';
import React from 'react';

type TableActionDeleteProps = Partial<PopconfirmProps> & {
  showIcon?: boolean;
};

const TableActionDelete: React.FC<TableActionDeleteProps> = (props) => {
  const { showIcon, ...resetProps } = props;

  return (
    <Popconfirm
      overlayStyle={{ whiteSpace: 'pre-wrap' }}
      title={`删除这条数据后将无法恢复，\n是否确认删除？`}
      {...resetProps}
    >
      <a>
        {showIcon && <DeleteOutlined />}
        <span>删除</span>
      </a>
    </Popconfirm>
  );
};

TableActionDelete.defaultProps = {
  showIcon: true,
};

export default TableActionDelete;
