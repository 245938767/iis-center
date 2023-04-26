import TableSelectionModal from '@/components/TableSelectionModal';
import OutputWarehouseTable from '@/pages/warehouse/components/OutputWarehouseTable';
import TableHeader from '@/pages/warehouse/components/TableHeader';
import WarehouseSelectro from '@/pages/warehouse/components/WarehouseSelectro';
import {
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
  PRODUCT_PRICE_TAX_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  WAREHOUSE_PRODUCT_BASE_COLUMNS,
} from '@/pages/warehouse/constants';
import { getByWarehouseForGoods } from '@/services/warehouse/warehouseAssetController';
import { ModalBaseProps } from '@/types';
import {
  ModalForm,
  ProFormDependency,
  ProFormGroup,
  ProFormInstance,
  ProFormMoney,
  ProFormSelect,
  ProFormText,
} from '@ant-design/pro-form';
import { ProColumns } from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Card } from 'antd';
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
  const { visible, onVisibleChange, onDone, isWarehouseAdjustment } = props;
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
    console.info(formData);
    setTableModalParams(undefined);
    setEditableKeys([]);
    formRef.current?.resetFields();
    onDone?.();
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
          <ProFormMoney name="freight" rules={[{ required: true }]} label="费用" initialValue={10.00}/>
          <WarehouseSelectro name={'shipWarehouseId'} label="发货仓" fieldProps={{}} />
          <WarehouseSelectro name={'consigneeWarehouseId'} label="收货仓" />
          <Card title={<TableHeader title="出库商品列表" tableName={[TABLE_NAME]} />}>
            <OutputWarehouseTable
              name={TABLE_NAME}
              editAccess={true}
              optionClomuns
              //   warehouseType={OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM}
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
                      setTableModalParams(res);
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
