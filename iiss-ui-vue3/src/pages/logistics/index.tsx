import WrapContent from '@/components/WrapContent';
import { list } from '@/services/logistics/logisticsController';
import ProTable, { ActionType, ProColumns } from '@ant-design/pro-table';
import { Button } from 'antd';
import React, { useRef, useState } from 'react';
import CreateLogistics from './components/CreateLogistics';
import { useBoolean } from 'ahooks';

const Logistics: React.FC = () => {
  // const [sheetVisible, { setTrue: openSheet, toggle: setSheetVisible }] = useBoolean(false);
  const [outputVisible, { setTrue: openInputModal, toggle: setOutputVisible }] = useBoolean(false);
  const actionRef = useRef<ActionType>();
  const [onKeyId, setOnKeyId] = useState('');

  const getLogisticsList = async (params: any) => {};
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
          // params={{}}
          request={(params) =>
            list({ ...params }).then((res) => {
              if (!res) return { success: false };
              return { success: res.code === 200, data: res.rows as any, total: res.total };
            })
          }
          toolBarRender={() => {
            return [
              <Button key="add" type="primary" onClick={openInputModal}>
                创建物流订单
              </Button>,
            ];
          }}
        />
        <CreateLogistics
          visible={outputVisible}
          onVisibleChange={setOutputVisible}
          onDone={() => actionRef.current?.reload()}
        />
      </WrapContent>
    </>
  );
};

export default Logistics;
