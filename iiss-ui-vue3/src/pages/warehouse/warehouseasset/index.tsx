import type { ActionType } from '@ant-design/pro-table';

import { Row, Col } from 'antd';
import React, { useRef, useState } from 'react';
import { WAREHOUSE_PRODUCT_COLUMNS } from '../constants';
import { ProTable } from '@ant-design/pro-table';
import { getByWarehouseForGoods } from '@/services/warehouse/warehouseAssetController';
import WarehousesTree from './components/WarehouseTree';
import WrapContent from '@/components/WrapContent';

export const getWarehouseData = (params: any) => {
  return getByWarehouseForGoods(params).then((resp) => {
    return {
      data: resp.data,
      success: resp.code === 200,
      total: resp.total,
    };
  });
};

const WarehouseAsset: React.FC = () => {
  const [menuActiveKey, setMenuActiveKey] = useState<React.Key>();
  const [pageLoading, setPageLoading] = useState<boolean>(false);

  const actionRef = useRef<ActionType>();

  // if (pageLoading) {
  //   return <Spin />;
  // }

  return (
    <WrapContent>
      <Row gutter={[16, 24]}>
        <Col lg={6} md={24}>
          <WarehousesTree
            onSelect={async (value: any) => {
              setMenuActiveKey(value.id);
              setPageLoading(false);
            }}
          />
        </Col>
        <Col lg={18} md={24}>
          <ProTable
            actionRef={actionRef}
            bordered
            rowKey="warehouseProductId"
            tableAlertRender={false}
            search={false}
            options={{ search: true, setting: false, reload: false, density: false }}
            columns={WAREHOUSE_PRODUCT_COLUMNS}
            params={{ warehouseId: menuActiveKey }}
            request={getWarehouseData}
          />
        </Col>
      </Row>
    </WrapContent>
  );
};

export default WarehouseAsset;
