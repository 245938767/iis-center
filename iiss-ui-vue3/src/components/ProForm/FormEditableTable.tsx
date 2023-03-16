
import type { ProFormInstance } from '@ant-design/pro-form';
import type { ActionType, ProColumns} from '@ant-design/pro-table';
import { EditableProTable } from '@ant-design/pro-table';
import type { EditableFormInstance, EditableProTableProps } from '@ant-design/pro-table/lib/components/EditableTable';
import { Form } from 'antd';
import type { FormInstance } from 'rc-field-form';
import { Field } from 'rc-field-form';
import type { ParamsType } from '@ant-design/pro-provider';
import { useImperativeHandle, useMemo, useRef, useState } from 'react';

export type CustomEditableFormInstance<T = any> = ProFormInstance<T> & {
  setTableData?: (data: Partial<T[]>) => void;
};
interface FormEditableTableProps<DataType, Params extends ParamsType, ValueType>
  extends Omit<EditableProTableProps<DataType, Params, ValueType>, 'editableFormRef'> {
  actions?: ((values: DataType[]) => DataType[])[];
  defaultEditAll?: boolean;
  readonly?: boolean;
  editableFormRef?: React.Ref<CustomEditableFormInstance<DataType> | undefined>;
}

function FormEditableTable<
  DataType extends Record<string, any>,
  Params extends ParamsType = ParamsType,
  ValueType = 'text',
>(props: FormEditableTableProps<DataType, ParamsType, ValueType>): JSX.Element {
  const {
    name,
    formItemProps,
    editable,
    recordCreatorProps,
    actions,
    defaultEditAll,
    editableFormRef,
    actionRef,
    readonly,
    columns,
    ...resetProps
  } = props;
  const internalEditableFormRef = useRef<EditableFormInstance>();
  const outerFormRef = useRef<FormInstance>();
  const internalFormRef = useRef<ProFormInstance>();
  const internalActionRef = useRef<ActionType>();
  const [creatorLoading, setCreatorLoading] = useState<boolean>(false);

  useImperativeHandle(editableFormRef, () => {
    const setTableData = (data: any) => {
      outerFormRef.current?.setFieldValue(name as string, data);
    };

    return { ...internalFormRef.current, setTableData } as CustomEditableFormInstance;
  });

  useImperativeHandle(actionRef, () => internalActionRef.current);

  const formItemRules = useMemo(() => {
    return [
      {
        validateTrigger: 'onSubmit',
        validator() {
          return internalEditableFormRef.current
            ?.validateFields()
            .then(() => Promise.resolve())
            .catch(() => Promise.reject());
        },
      },
      ...(formItemProps?.rules || []),
    ];
  }, [formItemProps?.rules]);

  const resetRecordCreatorProps = useMemo(() => {
    if (recordCreatorProps === false) return false;
    return {
      loading: creatorLoading,
      newRecordType: 'dataSource',
      ...(recordCreatorProps as any),
      onClick: (event) => {
        if (recordCreatorProps?.onClick) {
          const prom = recordCreatorProps.onClick(event) as unknown;
          if (prom instanceof Promise) {
            setCreatorLoading(true);
            prom
              .then((rowData) => {
                internalActionRef.current?.addEditRecord(rowData, { newRecordType: 'dataSource' });
              })
              .finally(() => {
                setCreatorLoading(false);
              });
            return false;
          }
          return prom;
        }
      },
    } as FormEditableTableProps<DataType, Params, ValueType>['recordCreatorProps'];
  }, [creatorLoading, recordCreatorProps]);

  const internalColumns = useMemo<ProColumns<DataType, ValueType>[] | undefined>(() => {
    if (readonly) {
      return columns?.map((item) => ({ ...item, editable: false }));
    }
    return columns;
  }, [columns, readonly]);

  return (
    <Form.Item {...formItemProps} name={name} trigger="onValuesChange" rules={formItemRules}>
      <Field name={name} shouldUpdate={false} isList preserve={formItemProps?.preserve}>
        {(control, _, form) => {
          const { value = [] } = control;
          outerFormRef.current = form;
          const editableKeys =
            defaultEditAll && props.editable?.type === 'multiple'
              ? value.map((item: any) => item[props.rowKey as string])
              : undefined;

          return (
            <EditableProTable<DataType, Params, ValueType>
              columns={internalColumns}
              controlled
              editableFormRef={internalEditableFormRef}
              actionRef={internalActionRef}
              scroll={{ x: 'max-content' }}
              {...(resetProps as any)}
              editable={{
                actionRender: (row, config, dom) => [dom.delete],
                editableKeys: readonly ? undefined : editableKeys,
                ...editable,
              }}
              recordCreatorProps={resetRecordCreatorProps}
              value={value}
              onValuesChange={(values) => {
                if (actions) {
                  const newValues = actions.reduce((data, action) => {
                    return action(data);
                  }, values);
                  control.onChange(newValues);
                } else {
                  control.onChange(values);
                }
              }}
              cardProps={{ bodyStyle: { padding: 0, margin: 0 } }}
            />
          );
        }}
      </Field>
    </Form.Item>
  );
}

export default FormEditableTable;
