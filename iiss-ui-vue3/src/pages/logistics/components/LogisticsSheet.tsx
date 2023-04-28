import { detail, update, updateOk } from '@/services/logistics/logisticsController';
import { ModalBaseProps } from '@/types';
import { DrawerForm, ProFormInstance } from '@ant-design/pro-form';
import type { RowSelectionType } from 'antd/lib/table/interface';
import Skeleton from '@ant-design/pro-skeleton';
import React, { useEffect, useMemo, useRef } from 'react';
import { Button, Card, message } from 'antd';
import ProDescriptions from '@ant-design/pro-descriptions';
import TableHeader from '@/pages/warehouse/components/TableHeader';
import WarehouseDireciton from '@/pages/warehouse/components/WarehouseDireciton';
import {
  INPUT_WAREHOUSE_TYPE_MAP,
  WAREHOUSE_PRODUCT_IMAGE_COLUMNS,
} from '@/pages/warehouse/constants';
import { map } from 'lodash';
import FormEditableTable from '@/components/ProForm/FormEditableTable';
import { ProColumns } from '@ant-design/pro-table';
import OrderUpload from './OrderUpload';
import moment from 'moment';

const TABLE_NAME = 'warehouseAgreeProductList';
const DEFAULT_ROW_KEY = 'assetId';
type LogisticsSheetProps = {
  logisticsId: React.Key;
  selection?: {
    type: RowSelectionType;
  };
} & ModalBaseProps;

const LogisticsSheet: React.FC<LogisticsSheetProps> = (props) => {
  const [loading, setLoading] = React.useState(true);
  const [dataSource, setDataSource] = React.useState<any>();
  const formRef = useRef<ProFormInstance>();

  const colmuns = useMemo<ProColumns[]>(() => {
    const innerColmuns: ProColumns[] = [
      WAREHOUSE_PRODUCT_IMAGE_COLUMNS,
      {
        title: '单号',
        dataIndex: 'batchNo',
        valueType: 'text',
      },
      {
        title: '仓库',
        dataIndex: 'warehouseName',
        valueType: 'text',
      },
      {
        title: '方式',
        dataIndex: 'inOutBizType',
        valueEnum: INPUT_WAREHOUSE_TYPE_MAP,
      },
      {
        title: '时间',
        dataIndex: 'updateTime',
        valueType: 'dateTime',
        search: false,
      },
      {
        title: '操作人',
        dataIndex: 'createUserName',
      },
    ];

    return innerColmuns;
  }, []);

  useEffect(() => {
    if (!props.visible) {
      setDataSource(undefined);
      setLoading(true);
      return;
    }
    //获得数据
    detail({ id: props.logisticsId } as API.detailParams).then((res) => {
      if (!res) return;
      setDataSource(res.result);
      formRef.current?.setFieldsValue({ [TABLE_NAME]: res.result?.assetResponseList });
      setLoading(false);
    });
  }, [props.logisticsId, props.visible]);

  const actions = useMemo(() => {
    return [
      (value: any) => {
        const newValue = map(value, (item) => {
          return item;
        });
        return newValue;
      },
    ];
  }, []);

  return (
    <>
      <DrawerForm
        width={1000}
        visible={props.visible}
        formRef={formRef}
        onVisibleChange={props.onVisibleChange}
        drawerProps={{
          maskClosable: false,
          destroyOnClose: true,
        }}
      >
        {loading ? (
          <Skeleton type="descriptions" />
        ) : (
          <>
            <Card>
              <ProDescriptions column={3} title="物流信息" dataSource={dataSource}>
                <ProDescriptions.Item
                  label="流水号"
                  dataIndex={'flowNo'}
                  valueType="text"
                  copyable
                />
                <ProDescriptions.Item label="费用" dataIndex={'freight'} valueType="money" />

                <ProDescriptions.Item
                  label="物流状态"
                  // dataIndex={'logisticsStatus'}
                  valueType="select"
                  valueEnum={{
                    WAITPAY: {
                      text: '待支付',
                      status: 'Error',
                    },
                    DELIVERY: {
                      text: '准备发货',
                      status: 'Success',
                    },
                    TRANSIT: {
                      text: '运输中',
                      status: 'Success',
                    },
                    COMPLETION: {
                      text: '运输完成',
                      status: 'Success',
                    },
                  }}
                >
                  {dataSource.orderBaseResponse.orderState === 1
                    ? 'WAITPAY'
                    : dataSource.logisticsStatus}
                </ProDescriptions.Item>
                <ProDescriptions.Item label="到达时间">
                  {dataSource.arriveTime > 0
                    ? moment(dataSource.arriveTime * 1000).format('YYYY-MM-DD')
                    : '-'}
                </ProDescriptions.Item>
                <ProDescriptions.Item label="调拨">
                  <WarehouseDireciton
                    from={dataSource.shipWarehouseName}
                    to={dataSource.consigneeWarehouseName}
                    style={{ display: 'flex' }}
                  />
                </ProDescriptions.Item>
              </ProDescriptions>
            </Card>
            <br />
            <Card>
              <ProDescriptions
                column={3}
                title="订单信息"
                dataSource={dataSource.orderBaseResponse}
              >
                <ProDescriptions.Item
                  label="流水号"
                  dataIndex={'flowNo'}
                  valueType="text"
                  copyable
                />

                <ProDescriptions.Item
                  label="订单类型"
                  dataIndex={'orderType'}
                  valueType="select"
                  valueEnum={{
                    0: { text: '全部', status: 'Default' },
                    1: {
                      text: '充电',
                      status: 'Success',
                    },
                    2: {
                      text: '停车',
                      status: 'Success',
                    },
                    3: {
                      text: '商城',
                      status: 'Success',
                    },
                    4: {
                      text: '物流',
                      status: 'Success',
                    },
                  }}
                />
                <ProDescriptions.Item
                  label="订单状态"
                  dataIndex={'orderState'}
                  valueType="select"
                  valueEnum={{
                    1: {
                      text: '待支付',
                      status: 'Error',
                    },
                    2: {
                      text: '支付完成',
                      status: 'Success',
                    },
                    3: {
                      text: '已废弃',
                      status: 'Wranring',
                    },
                  }}
                />
                <ProDescriptions.Item
                  label="订单金额"
                  dataIndex={'totalAmount'}
                  valueType="money"
                />
                <ProDescriptions.Item label="支付类型" dataIndex={'payInfo'} valueType="text" />
                <ProDescriptions.Item label="支付时间">
                  {moment(dataSource.orderBaseResponse.payTime * 1000).format('YYYY-MM-DD')}
                </ProDescriptions.Item>
                <ProDescriptions.Item label="订单创建时间">
                  {moment(dataSource.orderBaseResponse.createdAt * 1000).format('YYYY-MM-DD')}
                </ProDescriptions.Item>
              </ProDescriptions>
            </Card>
            <br />
            <Card title={<TableHeader title="物流记录" tableName={[TABLE_NAME]} />}>
              <FormEditableTable
                rowKey={DEFAULT_ROW_KEY}
                scroll={{ x: 'max-content', y: 320 }}
                columns={colmuns}
                name={TABLE_NAME}
                bordered
                actions={actions}
                recordCreatorProps={false}
                defaultEditAll
              />
            </Card>
            <br />
            <Card title="操作">
              {dataSource.orderBaseResponse.orderState === 1 ? (
                <OrderUpload flowId={dataSource.orderBaseResponse.flowNo} />
              ) : dataSource.logisticsStatus === 'DELIVERY' ? (
                <Button
                  type="primary"
                  onClick={() => {
                    update({ flowNo: dataSource.flowNo } as API.LogisticsUpdateRequest)
                      .then(res=>{message.success('发货成功') ;})
                      .catch(res=>{message.error('发货失败')});
                  }}
                >
                  发货
                </Button>
              ) : (
                <Button
                  type="primary"
                  onClick={() => {
                    updateOk({ flowNo: dataSource.flowNo } as API.LogisticsUpdateRequest)
                      .then(res=>{message.success('发货成功') ;})
                      .catch(res=>{message.error('发货失败')});
                  }}
                >
                  确认收货
                </Button>
              )}
            </Card>
          </>
        )}
      </DrawerForm>
    </>
  );
};
export default LogisticsSheet;
