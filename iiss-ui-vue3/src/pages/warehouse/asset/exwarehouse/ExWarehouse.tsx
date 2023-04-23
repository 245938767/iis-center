import WrapContent from '@/components/WrapContent';
import type { ActionType, ProColumns } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Button } from 'antd';
import React, { useRef } from 'react';
import { getWarehouseTableData } from '..';
import OutputWarehouse from '../../components/OutputWarehouse';
import WarehouseSheet from '../../components/WarehouseSheet';
import { OUTPUT_WAREHOUSE_COLUMNS, WAREHOUSE_RECORD_STATUS_ENUM } from '../../constants';

export type WarehousingRowType = {
  warehouseProductRecordId: React.Key;
  warehouseProductImgList: string[];
  status: number;
};

const Warehousing: React.FC = () => {
  const [sheetVisible, { setTrue: openSheet, toggle: setSheetVisible }] = useBoolean(false);
  const [outputVisible, { setTrue: openInputModal, toggle: setOutputVisible }] = useBoolean(false);
  const [recordId, setRecordId] = React.useState<React.Key>(0);
  const actionRef = useRef<ActionType>();

  const columns: ProColumns<WarehousingRowType>[] = [
    ...OUTPUT_WAREHOUSE_COLUMNS,
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
              openSheet();
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
        params={{ warehouseRecordStatus: WAREHOUSE_RECORD_STATUS_ENUM.CHU_KU }}
        request={getWarehouseTableData}
        toolBarRender={() => [
          <Button key="add" type="primary" onClick={openInputModal}>
            新建出库
          </Button>,
        ]}
      />
      <OutputWarehouse
        visible={outputVisible}
        onVisibleChange={setOutputVisible}
        onDone={() => actionRef.current?.reload()}
      />
      <WarehouseSheet
        recordId={recordId}
        visible={sheetVisible}
        onVisibleChange={setSheetVisible}
        onDone={() => actionRef.current?.reload()}
      />
    </WrapContent>
  );
};

export default Warehousing;
