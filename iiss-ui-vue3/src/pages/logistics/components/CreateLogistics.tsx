import TableSelectionModal from '@/components/TableSelectionModal';
import OutputWarehouseTable from '@/pages/warehouse/components/OutputWarehouseTable';
import TableHeader from '@/pages/warehouse/components/TableHeader';
import WarehouseSelectro from '@/pages/warehouse/components/WarehouseSelectro';
import {
  PRODUCT_NUM_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  WAREHOUSE_PRODUCT_BASE_COLUMNS,
} from '@/pages/warehouse/constants';
import { create } from '@/services/logistics/logisticsController';
import { getByWarehouseForGoods } from '@/services/warehouse/warehouseAssetController';
import type { ModalBaseProps } from '@/types';
import type { ProFormInstance } from '@ant-design/pro-form';
import { ModalForm, ProFormGroup, ProFormMoney } from '@ant-design/pro-form';
import type { ProColumns } from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Card, message } from 'antd';
import { map } from 'lodash';
import { useCallback, useEffect, useRef, useState } from 'react';

const warehouseProductColumns: ProColumns[] = [
  ...WAREHOUSE_PRODUCT_BASE_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  PRODUCT_NUM_COLUMNS,
];
const TABLE_NAME = 'logisticsProductRequests';
type CreateLogisticsProps = {
  isWarehouseAdjustment?: boolean;
} & ModalBaseProps;

const CreateLogistics: React.FC<CreateLogisticsProps> = (props) => {
  const { visible, onVisibleChange, onDone } = props;
  const formRef = useRef<ProFormInstance>();
  //商品选择数据
  const [editableKeys, setEditableKeys] = useState<React.Key[]>([]);
  const [tableModalParams, setTableModalParams] = useState<any>({});
  const [selectionModalVisibel, { setFalse: closeModal, setTrue: openModal }] = useBoolean(false);

  useEffect(() => {
    if (!visible) {
      setTableModalParams(undefined);
      setEditableKeys([]);
    }
  }, [visible]);
  const request = useCallback(async (params) => {
    const resp = await getByWarehouseForGoods(params);
    return {
      data: resp.data,
      success: resp.code === 200,
      total: resp.total,
    };
  }, []);
  const handleFinish = async (formData: any) => {
    create({ ...formData }).then((res) => {
      if (!res) return;
      if(res.code!=1){
      message.error(res.msg);
        return false;
      }
      message.success(res.msg);
      setTableModalParams(undefined);
      setEditableKeys([]);
      formRef.current?.resetFields();
      onDone?.();
      return true;
    });
    return;
  };
  return (
    <>
      <ModalForm
        title="创建物流订单"
        width={1000}
        visible={visible}
        onVisibleChange={onVisibleChange}
        modalProps={{ maskClosable: false, destroyOnClose: true }}
        formRef={formRef}
        onFinish={handleFinish}
      >
        <ProFormGroup>
          <ProFormMoney
            name="freight"
            rules={[{ required: true }]}
            label="费用"
            initialValue={10.0}
          />
          <WarehouseSelectro name={'shipWarehouseId'} label="发货仓" fieldProps={{}} />
          <WarehouseSelectro name={'consigneeWarehouseId'} label="收货仓" />
          <Card title={<TableHeader title="商品列表" tableName={[TABLE_NAME]} />}>
            <OutputWarehouseTable
              name={TABLE_NAME}
              editAccess={true}
              optionClomuns
              rowKey={'id'}
              editable={{ editableKeys }}
              recordCreatorProps={{
                newRecordType: 'dataSource',
                record: () => {},
                creatorButtonText: '选择商品',
                onClick: () => {
                  formRef.current
                    ?.validateFieldsReturnFormatValue?.(['shipWarehouseId'])
                    .then((res) => {
                      setTableModalParams({ warehouseId: res.shipWarehouseId });
                      openModal();
                    })
                    .catch(() => {});
                  return false;
                },
              }}
            />

            <TableSelectionModal
              title="选择商品"
              onOk={(rows) => {
                const keys = map(rows, (item) => item.id);
                const data = map(rows, (item) => {
                  return {
                    ...item,
                    price: undefined,
                    taxRate: undefined,
                    tax: undefined,
                    amount: undefined,
                  };
                });
                formRef.current?.setFieldsValue({ [TABLE_NAME]: data });
                setEditableKeys(keys);
                closeModal();
              }}
              visible={selectionModalVisibel}
              onCancel={closeModal}
              tableProps={{
                rowKey: 'id',
                toolbar: {
                  search: { placeholder: '请输入商品名称', allowClear: true },
                  onSearch: (keyWords) => {
                    setTableModalParams({ productName: keyWords });
                  },
                },
                columns: warehouseProductColumns,
                params: tableModalParams,
                request,
              }}
            />
          </Card>
        </ProFormGroup>
      </ModalForm>
    </>
  );
};
export default CreateLogistics;
