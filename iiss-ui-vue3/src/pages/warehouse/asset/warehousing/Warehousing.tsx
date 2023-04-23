import WrapContent from '@/components/WrapContent';
import type { ActionType, ProColumns } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Button } from 'antd';
import React, { useRef } from 'react';
import { getWarehouseTableData } from '..';
import InputWarehouse from '../../components/InputWarehouse';
import WarehouseSheet from '../../components/WarehouseSheet';
import { INPUT_WAREHOUSE_COLUMNS, WAREHOUSE_RECORD_STATUS_ENUM } from '../../constants';

export type WarehousingRowType = {
  warehouseProductRecordId: React.Key;
  warehouseProductImgList: string[];
  status: number;
};

const Warehousing: React.FC = () => {
  const [sheetVisible, setSheetVisible] = React.useState(false);
  const [inputVisible, { setTrue: openInputModal, toggle: setInputVisible }] = useBoolean(false);
  const [recordId, setRecordId] = React.useState<React.Key>(1);
  const actionRef = useRef<ActionType>();

  const columns: ProColumns<WarehousingRowType>[] = [
    ...INPUT_WAREHOUSE_COLUMNS,
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
              setRecordId(entity.assetId);
              setSheetVisible(true);
            }}
          >
            查看
          </a>,
        ];
      },
    },
  ];

  return (
    <WrapContent>
      <ProTable<WarehousingRowType>
        actionRef={actionRef}
        rowKey="assetId"
        columns={columns}
        params={{ warehouseRecordStatus: WAREHOUSE_RECORD_STATUS_ENUM.RU_KU }}
        request={getWarehouseTableData}
        toolBarRender={() => {
          return [
            <Button key="add" type="primary" onClick={openInputModal}>
              新建入库
            </Button>,
          ];
        }}
      />
      <InputWarehouse
        visible={inputVisible}
        onVisibleChange={setInputVisible}
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
