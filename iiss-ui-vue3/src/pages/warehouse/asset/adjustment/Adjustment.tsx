import WrapContent from '@/components/WrapContent';
import type { ActionType, ProColumns } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Avatar, Button, Space } from 'antd';
import React, { useMemo, useRef } from 'react';
import { getWarehouseTableData } from '..';
import OutputWarehouse from '../../components/OutputWarehouse';
import WarehouseDireciton from '../../components/WarehouseDireciton';
import WarehouseSheet from '../../components/WarehouseSheet';
import { WAREHOUSE_RECORD_STATUS_ENUM } from '../../constants';

export type WarehousingRowType = {
  warehouseProductRecordId: React.Key;
  warehouseProductImgList: string[];
  status: number;
  warehouseProductAdjustName: {
    from: string;
    to: string;
  };
} & Record<string, any>;

const Warehousing: React.FC = () => {
  const [sheetVisible, setSheetVisible] = React.useState(false);
  const [outputVisible, { setTrue: openInputModal, toggle: setOutputVisible }] = useBoolean(false);
  const [recordId, setRecordId] = React.useState<React.Key>(0);
  const actionRef = useRef<ActionType>();

  const columns: ProColumns<WarehousingRowType>[] = useMemo(() => {
    return [
      {
        title: '商品图片',
        dataIndex: 'warehouseProductImgList',
        valueType: 'image',
        search: false,
        width: 160,
        render(dom, entity) {
          return (
            <Space>
              {entity.warehouseProductImgList.map((item, index) => {
                // eslint-disable-next-line react/no-array-index-key
                return <Avatar shape="square" key={index} src={item} size="large" />;
              })}
            </Space>
          );
        },
      },
      {
        title: '调仓单号',
        dataIndex: 'warehouseOrder',
        valueType: 'text',
      },
      {
        title: '调仓',
        dataIndex: 'warehouseName',
        render: (_, row) => (
          <WarehouseDireciton
            from={row.warehouseProductAdjustName.from}
            to={row.warehouseProductAdjustName.to}
          />
        ),
        search: false,
      },
      {
        title: '库存总金额',
        dataIndex: 'warehouseAmount',
        valueType: 'money',
        align: 'right',
      },
      {
        title: '调仓时间',
        dataIndex: 'updateTime',
        valueType: 'dateTime',
        search: false,
      },
      {
        title: '操作人',
        dataIndex: 'createUserName',
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
                setRecordId(entity.warehouseProductRecordId);
                setSheetVisible(true);
              }}
            >
              查看
            </a>,
          ];
        },
      },
    ];
  }, []);

  return (

    <WrapContent>
      <ProTable<WarehousingRowType>
        actionRef={actionRef}
        rowKey="warehouseProductRecordId"
        params={{ warehouseRecordStatus: WAREHOUSE_RECORD_STATUS_ENUM.TIAO_CANG }}
        request={getWarehouseTableData}
        columns={columns}
        toolBarRender={() => {
          return [
            <Button key="add" type="primary" onClick={openInputModal}>
              新建调仓
            </Button>,
          ];
        }}
      />
      <OutputWarehouse
        isWarehouseAdjustment={true}
        visible={outputVisible}
        onVisibleChange={setOutputVisible}
        onDone={() => actionRef.current?.reload()}
      />
      <WarehouseSheet
        recordId={recordId}
        visible={sheetVisible}
        onDone={() => actionRef.current?.reload()}
        onVisibleChange={setSheetVisible}
      />
    </WrapContent>
  );
};

export default Warehousing;
