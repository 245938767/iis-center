import BasePage from '@/components/Base/BasePage';
import { TableActionDelete } from '@/components/TableAction';
import { getGoodsList, deleteGoods } from '@/services/peoduct/productController';
import { array2Tree } from '@/utils';
import { EditOutlined, PlusOutlined } from '@ant-design/icons';
import type { ActionType, ProColumns } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import { Avatar, Button, message } from 'antd';
import React, { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { Access, useAccess } from 'umi';
import GoodsCreator from './GoodsCreator';
import GoodsEditor from './GoodsEditor';
export type GoodsType = API.Product;
export const productColumn: ProColumns<any>[] = [
  {
    title: '编号',
    dataIndex: 'productCode',
    editable: false,
  },
  {
    title: '商品图片',
    search: false,
    editable: false,
    dataIndex: 'productImg',
    render: (text) => {
      return <Avatar shape="square" size="large" src={text} />;
    },
  },
  {
    title: '商品名称',
    dataIndex: 'productName',
    editable: false,
  },
  {
    title: '品牌',
    dataIndex: 'brand',
    editable: false,
  },
  {
    title: '类别',
    dataIndex: 'categoryName',
    editable: false,
  },
  {
    title: '规格',
    search: false,
    editable: false,
    dataIndex: 'standard',
  },
  {
    title: '型号',
    search: false,
    editable: false,
    dataIndex: 'model',
  },
  {
    title: '单位',
    search: false,
    editable: false,
    dataIndex: 'unit',
  },
];

export const getGoodsData = async (params: any) => {
  const { data, code, total } = await getGoodsList({ ...(params as any) });
  return {
    data: array2Tree({
      data,
      lable_key: 'name',
    }),
    success: code === 200,
    total,
  };
};

const Goods: React.FC = () => {
  const access = useAccess();
  const actionRef = useRef<ActionType>();

  const [creatorVisible, setCreatorVisible] = useState<boolean>(false);
  const [editorVisible, setEditorVisible] = useState<boolean>(false);
  const [currentRow, setCurrentRow] = useState<GoodsType>();

  const getData = useCallback(
    async (params) => {
      if (access.hasPerms('product:goods:query')) {
        return getGoodsData(params);
      }
      return [];
    },
    [access],
  );

  const del = useCallback(async (record: GoodsType) => {
    const delRes = await deleteGoods({ ids: String(record.id) });
    if (delRes.code === 200) {
      message.success(delRes?.msg);
      if (actionRef.current) {
        actionRef.current.reload();
      }
    }
  }, []);

  const columns = useMemo<ProColumns<GoodsType>[]>(
    () => [
      ...productColumn,
      {
        title: '操作',
        valueType: 'option',
        width: 160,
        render: (_, record) => [
          <Access key="row_edit_access" accessible={access.hasPerms('product:goods:edit')}>
            <a
              onClick={() => {
                setEditorVisible(true);
                setCurrentRow(record);
              }}
            >
              <EditOutlined />
              <span>修改</span>
            </a>
          </Access>,
          <Access key="row_delete_access" accessible={access.hasPerms('product:goods:remove')}>
            <TableActionDelete onConfirm={() => del(record)} />
          </Access>,
        ],
      },
    ],
    [access, del],
  );

  const toolBar = useCallback(
    () => [
      <Access key="toolbar_add_access" accessible={access.hasPerms('product:goods:add')}>
        <Button icon={<PlusOutlined />} type="primary" onClick={() => setCreatorVisible(true)}>
          新建
        </Button>
      </Access>,
    ],
    [access],
  );

  return (
    <BasePage>
      <ProTable
        actionRef={actionRef}
        rowKey="id"
        columns={columns}
        request={getData}
        toolBarRender={toolBar}
      />
      <GoodsCreator
        visible={creatorVisible}
        onVisibleChange={setCreatorVisible}
        onDone={() => actionRef.current?.reload()}
      />
      <GoodsEditor
        goodsId={currentRow?.id as number}
        visible={editorVisible}
        onVisibleChange={setEditorVisible}
        onDone={() => actionRef.current?.reload()}
      />
    </BasePage>
  );
};
export default Goods;
