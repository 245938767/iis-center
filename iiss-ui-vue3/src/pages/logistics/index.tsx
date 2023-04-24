import WrapContent from '@/components/WrapContent';
import ProTable, { ActionType, ProColumns } from '@ant-design/pro-table';
import { Button } from 'antd';
import React, { useRef, useState } from 'react';

const Logistics: React.FC = () => {
  const actionRef = useRef<ActionType>();
  const [onKeyId, setOnKeyId] = useState('');

  const columns: ProColumns[] = [
    {
      title: '流水号',
      dataIndex: 'flowNo',
      valueType: 'text',
    },
    {
      title: '物流状态',
      dataIndex: 'logisticsStatus',
      valueType: 'text',
    },
    {
      title: '费用',
      dataIndex: 'freight',
      valueType: 'money',
      align: 'right',
      search: false,
    },
    {
      title: '到达时间',
      dataIndex: 'arriveTime',
      valueType: 'dateTime',
      search: false,
    },
    {
      title: '操作',
      valueType: 'option',
      fixed: 'right',
      width: 80,
      render: (dom, entity) => {
        return [
          <a
            key={'key3'}
            onClick={() => {
              setOnKeyId(entity.id);
            }}
          >
            查看
          </a>,
        ];
      },
    },
  ];
  return (
    <>
    <WrapContent>
      <ProTable
        actionRef={actionRef}
        rowKey="assetId"
        columns={columns}
        params={{}}
        // request={}
        toolBarRender={() => {
          return [
            <Button key="add" type="primary" >
              创建物流订单
            </Button>,
          ];
        }}
      />
      </WrapContent>
    </>
  );
};

export default Logistics;