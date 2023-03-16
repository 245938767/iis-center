import TableSelectionModal from '@/components/TableSelectionModal';
import type { ModalBaseProps } from '@/types';
import { isEmpty, objectMap } from '@/utils';
// import { useFormSubmitter } from '@/utils/hooks';
import type { ProFormInstance } from '@ant-design/pro-form';
import { ModalForm, ProFormGroup, ProFormSelect } from '@ant-design/pro-form';
import type { ActionType } from '@ant-design/pro-table';
import { useBoolean } from 'ahooks';
import { Button, Card, message } from 'antd';
import { map, partialRight, unionWith } from 'lodash';
import React, { useEffect, useRef, useState } from 'react';
import { getGoodsData, productColumn } from '@/pages/product/goods';
import GoodsCreator from '@/pages/product/goods/GoodsCreator';
import { INPUT_WAREHOUSE_TYPE_OPTIONS } from '../constants';
import InputWarehouseTable from './InputWarehouseTable';
import TableHeader from './TableHeader';
import WarehouseSelectro from './WarehouseSelectro';
import { assetCreateIn } from '@/services/warehouse/assetController';

const TABLE_NAME = 'warehouseProductSaveRequestList';

export const productFiledMap = {
  productId: 'id',
  productName: 'productName',
  productImg: 'productImg',
  productCode: 'productCode',
  productSpecification: 'productSpecification'};

type InputWarehouseProps = ModalBaseProps;

const convertToProduct = partialRight(objectMap, productFiledMap);
const InputWarehouse: React.FC<InputWarehouseProps> = (props) => {
  const { visible, onVisibleChange, onDone, onClose } = props;

  const formRef = useRef<ProFormInstance>();
  const actionRef = useRef<ActionType>();

  const [tableModalParams, setTableModalParams] = useState<any>({});
  const [selectionModalVisibel, { setFalse: closeModal, setTrue: openModal }] = useBoolean(false);

  const handleFinish = async (formData: API.AssetCreateRequest) => {
    return assetCreateIn(formData).then((resp) => {
      if (!resp) return false;
      message.success(resp.msg);
      setTableModalParams(undefined);
      formRef.current?.resetFields();
      onDone?.();
      return true;
    });
  };

  useEffect(() => {
    if (!visible) {
      setTableModalParams(undefined);
    }
  }, [visible]);

  return (
    <>
      <ModalForm
        title="新建入库"
        width={1000}
        visible={visible}
        onVisibleChange={onVisibleChange}
        modalProps={{ maskClosable: false, destroyOnClose: true, onCancel: onClose }}
        formRef={formRef}
        onFinish={handleFinish}
      >
        <ProFormGroup>
          <WarehouseSelectro
            name={'warehouseId'}
            label="入库仓"
            fieldProps={{
              onChange: (value: any) => {
                if (isEmpty(value)) return;
              },
            }}
          />
          <ProFormSelect
            label="入库方式"
            width="md"
            name="warehouseType"
            initialValue={1}
            options={INPUT_WAREHOUSE_TYPE_OPTIONS}
          />
        </ProFormGroup>
        <Card title={<TableHeader title="入库商品表" tableName={[TABLE_NAME]} />}>
          <InputWarehouseTable
            optionClomuns
            name={TABLE_NAME}
            recordCreatorProps={{
              newRecordType: 'dataSource',
              record: () => {},
              creatorButtonText: '添加商品',
              onClick: () => {
                openModal();
                return false;
              },
            }}
          />
        </Card>
      </ModalForm>
      <TableSelectionModal
        title="选择商品"
        width={1000}
        onOk={(rows) => {
          const selectedData = map(rows, (row) => convertToProduct(row));
          const preTableData = formRef.current?.getFieldValue(TABLE_NAME);
          //组合数组
          const newTableData = unionWith(preTableData, selectedData, (a, b) => a.productId === b.productId);
          formRef.current?.setFieldsValue({ [TABLE_NAME]: newTableData });
          closeModal();
        }}
        visible={selectionModalVisibel}
        onCancel={closeModal}
        tableProps={{
          actionRef,
          rowKey: 'id',
          toolbar: {
            search: { placeholder: '请输入商品名称', allowClear: true },
            onSearch: (keyWords) => {
              setTableModalParams({ productName: keyWords });
            },
            actions: [
              <GoodsCreator
                key="add_action"
                trigger={<Button type="primary">添加商品</Button>}
                onDone={() => actionRef.current?.reload()}
              />,
            ],
          },
          columns: productColumn,
          params: tableModalParams,
          request: getGoodsData,
        }}
      />
    </>
  );
};

export default InputWarehouse;
