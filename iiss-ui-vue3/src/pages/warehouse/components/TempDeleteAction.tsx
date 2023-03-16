import { TableActionDelete } from '@/components/TableAction';
import type { EditableFormInstance } from '@ant-design/pro-table';
import { filter } from 'lodash';
import React from 'react';

type TempDeleteActionProps = {
  rowId: React.Key;
  rowKey: React.Key;
  editableFormRef: React.MutableRefObject<EditableFormInstance<any> | undefined>;
  tableName: string;
};

const TempDeleteAction: React.FC<TempDeleteActionProps> = (props) => {
  const { editableFormRef } = props;
  return (
    <TableActionDelete
      title="删除此行？"
      showIcon={false}
      onConfirm={() => {
        const rowsData = editableFormRef.current?.getRowsData?.() || [];
        const newData = filter(rowsData, (item) => item[props.rowKey] !== props.rowId);
        editableFormRef.current?.setFieldsValue({ [props.tableName]: [...newData] });
      }}
    />
  );
};

export default TempDeleteAction;
