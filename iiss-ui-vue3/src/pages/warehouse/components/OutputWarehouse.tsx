import TableSelectionModal from '@/components/TableSelectionModal';
import type { ModalBaseProps } from '@/types';
import { isEmpty } from '@/utils';
import { useBoolean } from 'ahooks';
import { Card, Col, message, Row } from 'antd';
import type { List } from 'lodash';
import { map } from 'lodash';
import { useCallback, useEffect, useRef, useState } from 'react';
import {
  OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM,
  OUTPUT_WAREHOUSE_PRODUCT_TYPE_OPTIONS,
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
  PRODUCT_PRICE_TAX_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  WAREHOUSE_PRODUCT_BASE_COLUMNS,
} from '../constants';
import OutputWarehouseTable from './OutputWarehouseTable';
import TableHeader from './TableHeader';
import WarehouseSelectro from './WarehouseSelectro';
import type { ProFormInstance} from '@ant-design/pro-form';
import { ProFormGroup, ProFormText } from '@ant-design/pro-form';
import { ModalForm, ProFormDependency, ProFormSelect } from '@ant-design/pro-form';
import type { ProColumns } from '@ant-design/pro-table';
import { assetCreateOut, translationWarehouse } from '@/services/warehouse/assetController';
import { getByWarehouseForGoods } from '@/services/warehouse/warehouseAssetController';

const TABLE_NAME = 'assetProductRequestList';

const warehouseProductColumns: ProColumns[] = [
  ...WAREHOUSE_PRODUCT_BASE_COLUMNS,
  WAREHOUSE_PRODUCT_ATTR_VALUE_COLUMNS,
  PRODUCT_NUM_COLUMNS,
  PRODUCT_PRICE_COLUMNS,
  ...PRODUCT_PRICE_TAX_COLUMNS,
];

type OutputWarehouseProps = {
  isWarehouseAdjustment?: boolean;
} & ModalBaseProps;

const OutputWarehouse: React.FC<OutputWarehouseProps> = (props) => {
  const { visible, onVisibleChange, onDone, isWarehouseAdjustment } = props;
  const formRef = useRef<ProFormInstance>();
  const [canEdit, setCanEdit] = useBoolean(true);
  const [editableKeys, setEditableKeys] = useState<React.Key[]>([]);
  const [tableModalParams, setTableModalParams] = useState<any>({});
  const [selectionModalVisibel, { setFalse: closeModal, setTrue: openModal }] = useBoolean(false);
  const [warehouseType, setWarehouseType] = useState<OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM>(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.SHENG_CHAN_LING_YONG);
  useEffect(() => {
    if (visible === false) {
      setWarehouseType(OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.SHENG_CHAN_LING_YONG);
    }
  }, [visible]);

  useEffect(() => {
    if (isWarehouseAdjustment && visible) {
      setTimeout(() => {
        formRef.current?.setFieldsValue({
          warehouseType: OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.TIAO_CANG,
        });
      }, 0);
    }
  }, [isWarehouseAdjustment, visible]);

  useEffect(() => {
    if (!visible) {
      setTableModalParams(undefined);
      setEditableKeys([]);
    }
  }, [visible]);

  const handleFinish = async (formData: API.AssetCreateRequest) => {
    console.info(formData);
    if (formData.translationWarehouseId) {
      return translationWarehouse(formData).then((res) => {
        if (!res) return;
        message.success(res.msg);
        setTableModalParams(undefined);
        setEditableKeys([]);
        formRef.current?.resetFields();
        onDone?.();
        return true;
      });
    } else {
      return assetCreateOut(formData).then((resp) => {
        if (!resp) return;
        message.success(resp.msg);
        setTableModalParams(undefined);
        setEditableKeys([]);
        formRef.current?.resetFields();
        onDone?.();
        return true;
      });
    }
  };

  const request = useCallback(async (params) => {
    const resp = await getByWarehouseForGoods(params);
    return {
      data: resp.data,
      success: resp.code === 200,
      total: resp.total,
    };
  }, []);

  return (
    <>
      <ModalForm
        title="新建出库"
        width={1000}
        visible={visible}
        onVisibleChange={onVisibleChange}
        modalProps={{ maskClosable: false, destroyOnClose: true }}
        formRef={formRef}
        // submitter={{ render: submitterRender }}
        onFinish={handleFinish}
      >
        <ProFormGroup>
          <ProFormText name="batchNo" rules={[{ required: true }]} label="批次号" />
          <WarehouseSelectro
            name={'warehouseId'}
            label="出库仓"
            fieldProps={{
              onChange: (value: List<any> | null | undefined) => {
                if (isEmpty(value)) return;
              },
            }}
          />
          <ProFormDependency name={['warehouseType']}>
            {(values) => {
              if (values.warehouseType != 'WAREHOUSE_ADJUST_POSiTION') return undefined;
              return <WarehouseSelectro name={'translationWarehouseId'} label="调往仓库" />;
            }}
          </ProFormDependency>
          <ProFormSelect
            label="出库方式"
            width="md"
            name="inOutBizType"
            initialValue={OUTPUT_WAREHOUSE_PRODUCT_TYPE_ENUM.XIAO_SHOU_CHU_KU}
            disabled={isWarehouseAdjustment}
            rules={[{ required: true }]}
            fieldProps={{ onChange: setWarehouseType }}
            options={OUTPUT_WAREHOUSE_PRODUCT_TYPE_OPTIONS}
          />
        </ProFormGroup>
        <Card title={<TableHeader title="出库商品列表" tableName={[TABLE_NAME]} />}>
          <OutputWarehouseTable
            name={TABLE_NAME}
            editAccess={canEdit}
            optionClomuns
            warehouseType={warehouseType}
            rowKey={'id'}
            editable={{ editableKeys }}
            recordCreatorProps={{
              newRecordType: 'dataSource',
              record: () => {},
              creatorButtonText: '选择商品',
              onClick: () => {
                formRef.current
                  ?.validateFieldsReturnFormatValue?.(['warehouseId'])
                  .then((res) => {
                    setTableModalParams(res);
                    openModal();
                  })
                  .catch(() => {});
                return false;
              },
            }}
          />
        </Card>
      </ModalForm>
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
    </>
  );
};

export default OutputWarehouse;
