import {
  addCategory,
  deleteCategory,
  getCategoryInfo,
  getCategoryList,
  updateCategory,
} from '@/services/peoduct/categoryController';
import { array2Tree, isEmpty } from '@/utils';
import { DeleteOutlined, EditOutlined, PlusOutlined } from '@ant-design/icons';
import { PageContainer } from '@ant-design/pro-layout';
import type { ActionType, ProColumns } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import { Button, message, Popconfirm } from 'antd';
import React, { useCallback, useMemo, useRef, useState } from 'react';
import { Access, useAccess } from 'umi';
import CategoryForm from './components/CategoryForm';

export type CategoryType = API.Category;

export default (): React.ReactNode => {
  const access = useAccess();
  const actionRef = useRef<ActionType>();

  const [modalVisible, handleModalVisible] = useState<boolean>(false);
  const [currentOperate, setCurrentOperate] = useState<'修改' | '新增'>('新增');
  const [currentRow, setCurrentRow] = useState<CategoryType>();

  const getData = useCallback(
    async (params) => {
      if (access.hasPerms('product:category:query')) {
        const { data, code, total } = await getCategoryList({ ...(params as any) });
        return {
          data: array2Tree({
            data,
            lable_key: 'name',
          }),
          success: code === 200,
          total,
        };
      }
      return [];
    },
    [access],
  );

  const edit = useCallback((record: CategoryType) => {
    setCurrentOperate('修改');
    getCategoryInfo({ id: record.id as number }).then((res) => {
      setCurrentRow(res.data || undefined);
      handleModalVisible(true);
    });
  }, []);

  const del = useCallback(async (record: CategoryType) => {
    const delRes = await deleteCategory({ ids: String(record.id) });
    if (delRes.code === 200) {
      message.success(delRes?.msg);
      if (actionRef.current) {
        actionRef.current.reload();
      }
    }
  }, []);

  const toolBarAdd = useCallback(() => {
    setCurrentOperate('新增');
    setCurrentRow(undefined);
    handleModalVisible(true);
  }, []);

  const submit = useCallback(
    async (formData): Promise<boolean | void> => {
      if (isEmpty(formData.parentId)) {
        formData.parentId = '0';
      }
      let result: any = {};
      if (currentOperate === '新增') {
        result = await addCategory({
          ...formData,
          parentId: formData?.parentId || '0',
        });
      } else if (currentOperate === '修改') {
        result = await updateCategory({
          ...currentRow,
          ...formData,
        });
      }
      if (result.code === 200) {
        message.success(result?.msg);
        if (actionRef.current) {
          actionRef.current.reload();
        }
        return true;
      }
      return false;
    },
    [currentOperate, currentRow],
  );

  const columns = useMemo<ProColumns<CategoryType>[]>(
    () => [
      {
        title: '分类名',
        dataIndex: 'name',
      },
      {
        title: '操作',
        valueType: 'option',
        width: 200,
        render: (_, record) => [
          <Access key={'edit' + record.id} accessible={access.hasPerms('product:category:edit')}>
            <a
              key="edit"
              onClick={() => {
                edit(record);
              }}
            >
              <EditOutlined />
              修改
            </a>
          </Access>,
          <Access
            key={'delete' + record.id}
            accessible={access.hasPerms('product:category:remove')}
          >
            <Popconfirm
              overlayStyle={{ whiteSpace: 'pre-wrap' }}
              title={`删除这条数据后将无法恢复，\n是否确认删除？`}
              onConfirm={async () => {
                del(record);
              }}
            >
              <a>
                {<DeleteOutlined />}
                <span>删除</span>
              </a>
            </Popconfirm>
          </Access>,
        ],
      },
    ],
    [access, del, edit],
  );

  const toolBar = useCallback(
    () => [
      <Access key="add" accessible={access.hasPerms('product:category:add')}>
        <Button key="add" icon={<PlusOutlined />} type="primary" onClick={toolBarAdd}>
          新建
        </Button>
      </Access>,
    ],
    [access, toolBarAdd],
  );

  return (
    <PageContainer>
      <ProTable
        actionRef={actionRef}
        rowKey="id"
        columns={columns}
        request={getData}
        toolBarRender={toolBar}
      />
      <CategoryForm
        title={`${currentOperate}分类`}
        visible={modalVisible}
        value={currentRow}
        onVisibleChange={handleModalVisible}
        onFinish={submit}
      />
    </PageContainer>
  );
};
