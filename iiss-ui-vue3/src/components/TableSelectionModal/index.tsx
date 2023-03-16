import type { ProTableProps } from '@ant-design/pro-table';
import ProTable from '@ant-design/pro-table';
import type { ModalProps } from 'antd';
import { Modal } from 'antd';
import type { RowSelectionType } from 'antd/lib/table/interface';
import { filter, get } from 'lodash';
import React, { useCallback, useEffect, useState } from 'react';

interface TableModalProps<T = any, U = any> extends Partial<Omit<ModalProps, 'onOk'>> {
  visible?: boolean;
  type?: RowSelectionType;
  tableProps?: Partial<Omit<ProTableProps<T, U>, 'rowSelection'>>;
  onOk: (rows: any[]) => void;
}

const TableModal: React.FC<TableModalProps> = (props) => {
  const { visible, tableProps, onOk, type, ...resetProps } = props;
  const [selectedRows, setSelectedRows] = useState<any[]>([]);
  const [selectedRowKeys, setSelectedRowKeys] = useState<React.Key[]>([]);

  const selectRow = useCallback(
    (record) => {
      const keys = [...selectedRowKeys];
      const rowKey = get(record, props.tableProps?.rowKey as string);
      const index = keys.indexOf(rowKey);

      if (type === 'radio') {
        setSelectedRows([record]);
        setSelectedRowKeys([rowKey]);
        return;
      }

      if (index >= 0) {
        keys.splice(index, 1);
        setSelectedRows(
          filter(selectedRows, (item) => get(item, props.tableProps?.rowKey as string) !== rowKey),
        );
      } else {
        keys.push(rowKey);
        setSelectedRows([...selectedRows, record]);
      }
      setSelectedRowKeys(keys);
    },
    [props.tableProps?.rowKey, selectedRowKeys, selectedRows, type],
  );

  useEffect(() => {
    if (!visible) {
      setSelectedRows([]);
      setSelectedRowKeys([]);
    }
  }, [visible]);

  return (
    <Modal
      width={960}
      visible={visible}
      destroyOnClose
      {...resetProps}
      onOk={() => onOk(selectedRows)}
      okButtonProps={{ disabled: selectedRowKeys.length === 0 }}
      maskClosable={false}
    >
      <ProTable
        bordered
        scroll={{ x: 'max-content', y: 320 }}
        search={false}
        tableAlertRender={type === 'radio' ? false : undefined}
        rowSelection={{
          type,
          hideSelectAll: true,
          selectedRowKeys,
          onChange(keys, rows) {
            setSelectedRowKeys(keys);
            setSelectedRows(rows);
          },
        }}
        onRow={(data) => {
          return { onClick: () => selectRow(data) };
        }}
        debounceTime={300}
        cardProps={{ bodyStyle: { padding: '0px', margin: '0px' } }}
        {...tableProps}
      />
    </Modal>
  );
};

export default TableModal;
