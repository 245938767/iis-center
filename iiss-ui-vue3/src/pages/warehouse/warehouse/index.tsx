import { PlusOutlined, DeleteOutlined } from '@ant-design/icons';
import type { FormInstance } from 'antd';
import { Button, message, Modal } from 'antd';
import React, { useState, useRef, useEffect, Key } from 'react';
import { useIntl, FormattedMessage, useAccess } from 'umi';
import { FooterToolbar } from '@ant-design/pro-layout';
import WrapContent from '@/components/WrapContent';
import type { ProColumns, ActionType } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import UpdateForm from './components/edit';
import { buildTreeData } from '@/utils/utils';
import {
  createWarehouse,
  deleteWarehouse,
  getById,
  getParentOneList,
  getTreeList,
  updateWarehouse,
} from '@/services/warehouse/warehouseController';
import { getUserList } from '@/pages/system/user/service';

/* *
 *
 * @author xiao
 *
 * */

/**
 * 添加节点
 *
 * @param fields
 */
const handleAdd = async (fields: API.WarehouseCreateRequest) => {
  const hide = message.loading('正在添加');
  try {
    const resp = await createWarehouse({ ...fields });
    hide();
    if (resp.code === 200) {
      message.success('添加成功');
    } else {
      message.error(resp.msg);
    }
    return true;
  } catch (error) {
    hide();
    message.error('添加失败请重试！');
    return false;
  }
};

/**
 * 更新节点
 *
 * @param fields
 */
const handleUpdate = async (fields: API.WarehouseUpdateRequest) => {
  const hide = message.loading('正在配置');
  try {
    const resp = await updateWarehouse(fields);
    hide();
    if (resp.code === 200) {
      message.success('配置成功');
    } else {
      message.error(resp.msg);
    }
    return true;
  } catch (error) {
    hide();
    message.error('配置失败请重试！');
    return false;
  }
};

/**
 * 删除节点
 *
 * @param selectedRows
 */
const handleRemove = async (selectedRows: API.WarehouseUpdateRequest[]) => {
  const hide = message.loading('正在删除');
  if (!selectedRows) return true;
  try {
    const resp = await deleteWarehouse({ houseId: selectedRows[0].id });
    hide();
    if (resp.code === 200) {
      message.success('删除成功，即将刷新');
    } else {
      message.error(resp.msg);
    }
    return true;
  } catch (error) {
    hide();
    message.error('删除失败，请重试');
    return false;
  }
};

const handleRemoveOne = async (selectedRow: API.WarehouseUpdateRequest) => {
  const hide = message.loading('正在删除');
  if (!selectedRow) return true;
  try {
    const resp = await deleteWarehouse({ houseId: selectedRow.id });
    hide();
    if (resp.code === 200) {
      message.success('删除成功，即将刷新');
    } else {
      message.error(resp.msg);
    }
    return true;
  } catch (error) {
    hide();
    message.error('删除失败，请重试');
    return false;
  }
};

const DeptTableList: React.FC = () => {
  const formTableRef = useRef<FormInstance>();

  const [modalVisible, setModalVisible] = useState<boolean>(false);

  const actionRef = useRef<ActionType>();
  const [currentRow, setCurrentRow] = useState<API.WarehouseUpdateRequest>();
  const [selectedRowsState, setSelectedRows] = useState<API.WarehouseUpdateRequest[]>([]);

  const [deptTree, setDeptTree] = useState<any>([]);
  const [statusOptions, setStatusOptions] = useState<any>([]);

  useEffect(() => {
    //获得用户信息
    getUserList().then((res) => {
      setStatusOptions(res.data);
    });
  }, []);

  /** 国际化配置 */
  const intl = useIntl();

  const access = useAccess();

  const columns: ProColumns[] = [
    {
      title: '代码',
      dataIndex: 'code',
      valueType: 'text',
    },
    {
      title: '仓库名',
      dataIndex: 'warehouseName',
      valueType: 'text',
    },
    {
      title: '仓库地址',
      dataIndex: 'warehouseAddress',
      valueType: 'text',
    },
    {
      title: '负责人',
      dataIndex: 'warehouseAdminId',
      valueType: 'select',
      valueEnum: statusOptions,
    },
    {
      title: '操作',
      dataIndex: 'option',
      width: '220px',
      valueType: 'option',
      render: (_, record) => [
        <Button
          type="link"
          size="small"
          key="edit"
          hidden={!access.hasPerms('system:dept:edit')}
          onClick={() => {
            getTreeList().then((res) => {
              if (res.code === 200) {
                let depts = res.data;
                if (depts.length === 0) {
                  depts = [{ id: 0, title: '无上级', children: undefined, key: 0, value: 0 }];
                }
                setDeptTree(depts);
                setModalVisible(true);
                setCurrentRow(record);
              } else {
                message.warn(res.msg);
              }
            });
          }}
        >
          编辑
        </Button>,
        <Button
          type="link"
          size="small"
          danger
          key="batchRemove"
          hidden={!access.hasPerms('system:dept:remove')}
          onClick={async () => {
            Modal.confirm({
              title: '删除',
              content: '确定删除该项吗？',
              okText: '确认',
              cancelText: '取消',
              onOk: async () => {
                const success = await handleRemoveOne(record);
                if (success) {
                  if (actionRef.current) {
                    actionRef.current.reload();
                  }
                }
              },
            });
          }}
        >
          删除
        </Button>,
      ],
    },
  ];

  return (
    <WrapContent>
      <div style={{ width: '100%', float: 'right' }}>
        <ProTable
          headerTitle={'仓库信息'}
          actionRef={actionRef}
          formRef={formTableRef}
          rowKey="deptId"
          key="deptList"
          search={{
            labelWidth: 120,
          }}
          toolBarRender={() => [
            <Button
              type="primary"
              key="add"
              hidden={!access.hasPerms('system:dept:add')}
              onClick={async () => {
                getTreeList().then((res) => {
                  if (res.code === 200) {
                    setDeptTree(res.data);
                    setCurrentRow(undefined);
                    setModalVisible(true);
                  } else {
                    message.warn(res.msg);
                  }
                });
              }}
            >
              <PlusOutlined /> <FormattedMessage id="pages.searchTable.new" defaultMessage="新建" />
            </Button>,
            <Button
              type="primary"
              key="remove"
              hidden={selectedRowsState?.length === 0}
              onClick={async () => {
                const success = await handleRemove(selectedRowsState);
                if (success) {
                  setSelectedRows([]);
                  actionRef.current?.reloadAndRest?.();
                }
              }}
            >
              <DeleteOutlined />
              <FormattedMessage id="pages.searchTable.delete" defaultMessage="删除" />
            </Button>,
          ]}
          request={(params) =>
            getTreeList({ ...params }).then((res) => {
              return {
                data: res.data,
                total: res.data.length,
                success: true,
              };
            })
          }
          columns={columns}
          rowSelection={{
            onChange: (_, selectedRows) => {
              setSelectedRows(selectedRows);
            },
          }}
        />
      </div>
      {selectedRowsState?.length > 0 && (
        <FooterToolbar
          extra={
            <div>
              <FormattedMessage id="pages.searchTable.chosen" defaultMessage="已选择" />
              <a style={{ fontWeight: 600 }}>{selectedRowsState.length}</a>
              <FormattedMessage id="pages.searchTable.item" defaultMessage="项" />
            </div>
          }
        >
          <Button
            key="remove"
            hidden={!access.hasPerms('system:dept:remove')}
            onClick={async () => {
              Modal.confirm({
                title: '删除',
                content: '确定删除该项吗？',
                okText: '确认',
                cancelText: '取消',
                onOk: async () => {
                  const success = await handleRemove(selectedRowsState);
                  if (success) {
                    setSelectedRows([]);
                    actionRef.current?.reloadAndRest?.();
                  }
                },
              });
            }}
          >
            <FormattedMessage id="pages.searchTable.batchDeletion" defaultMessage="批量删除" />
          </Button>
        </FooterToolbar>
      )}
      <UpdateForm
        onSubmit={async (values) => {
          let success = false;
          if (values.id) {
            success = await handleUpdate({ ...(values as API.WarehouseUpdateRequest) });
          } else {
            success = await handleAdd({ ...(values as API.WarehouseCreateRequest) });
          }
          if (success) {
            setModalVisible(false);
            setCurrentRow(undefined);
            if (actionRef.current) {
              actionRef.current.reload();
            }
          }
        }}
        onCancel={() => {
          setModalVisible(false);
          setCurrentRow(undefined);
        }}
        visible={modalVisible}
        values={currentRow || {}}
        deptTree={deptTree}
        statusOptions={statusOptions}
      />
    </WrapContent>
  );
};

export default DeptTableList;
