import React, { useEffect } from 'react';
import { ProFormDigit, ProFormText, ProFormRadio, ProFormTreeSelect } from '@ant-design/pro-form';
import { Form, Modal, Row, Col } from 'antd';
import { useIntl, FormattedMessage } from 'umi';
import Title from 'antd/lib/skeleton/Title';

/* *
 *
 * @author whiteshader@163.com
 * @datetime  2021/09/16
 *
 * */

export type DeptFormValueType = Record<string, unknown> & Partial<API.WarehouseUpdateRequest>;

export type DeptFormProps = {
  onCancel: (flag?: boolean, formVals?: DeptFormValueType) => void;
  onSubmit: (values: DeptFormValueType) => Promise<void>;
  visible: boolean;
  values: Partial<API.WarehouseUpdateRequest>;
  deptTree: any;
  statusOptions: any;
};

const DeptForm: React.FC<DeptFormProps> = (props) => {
  const [form] = Form.useForm();

  const { statusOptions, deptTree } = props;

  useEffect(() => {
    form.resetFields();
    form.setFieldsValue({
      id: props.values.id,
      parentId: props.values.parentId,
      warehouseNaem: props.values.warehouseName,
      warehouseAddress: props.values.warehouseAddress,
      code: props.values.code,
      warehouseAdminId: props.values.warehouseAdminId,
      phone: props.values.phone,
    });
  }, [form, props]);

  const intl = useIntl();
  const handleOk = () => {
    form.submit();
  };
  const handleCancel = () => {
    props.onCancel();
    form.resetFields();
  };
  const handleFinish = async (values: Record<string, any>) => {
    props.onSubmit(values as DeptFormValueType);
  };

  return (
    <Modal
      width={640}
      title={intl.formatMessage({
        id: 'system.Dept.modify',
        defaultMessage: '编辑Warehouse',
      })}
      visible={props.visible}
      destroyOnClose
      onOk={handleOk}
      onCancel={handleCancel}
    >
      <Form form={form} onFinish={handleFinish} initialValues={props.values}>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            {/* <ProFormDigit
              name="deptId"
              label={intl.formatMessage({
                id: 'system.Dept.dept_id',
                defaultMessage: '部门id',
              })}
              width="xl"
              placeholder="请输入部门id"
              disabled
              hidden={!props.values.deptId}
              rules={[
                {
                  required: false,
                  message: <FormattedMessage id="请输入部门id！" defaultMessage="请输入部门id！" />,
                },
              ]}
            /> */}
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormTreeSelect
              name="parentId"
              label={intl.formatMessage({
                id: 'system.Dept.parent_dept',
                defaultMessage: '上级仓库:',
              })}
              request={async () => {
                return deptTree;
              }}
              fieldProps={{fieldNames:{label:'warehouseName',value:'id',children:'children'}}}
              width="xl"
              placeholder="请选择上级仓库"
              rules={[
                {
                  required: true,
                  message: (
                    <FormattedMessage id="请选择上级部门！" defaultMessage="请选择上级部门!" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormText
              name="ancestors"
              label={intl.formatMessage({
                id: 'system.Dept.ancestors',
                defaultMessage: '祖级列表',
              })}
              width="xl"
              placeholder="请输入祖级列表"
              hidden={true}
              rules={[
                {
                  required: false,
                  message: (
                    <FormattedMessage id="请输入祖级列表！" defaultMessage="请输入祖级列表！" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormDigit
              name="code"
              label="code"
              width="xl"
              placeholder="请输入code代码"
              rules={[
                {
                  required: false,
                  message: <FormattedMessage id="请输入Code！" defaultMessage="请输入Code！" />,
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormText
              name="warehouseName"
              label="仓库名称"
              width="xl"
              placeholder="请输入部门名称"
              rules={[
                {
                  required: false,
                  message: (
                    <FormattedMessage id="请输入仓库名称！" defaultMessage="请输入仓库名称！" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormText
              name="warehouseAddress"
              label="仓库地址"
              width="xl"
              placeholder="请输入仓库地址"
              rules={[
                {
                  required: false,
                  message: (
                    <FormattedMessage id="请输入仓库地址！" defaultMessage="请输入仓库地址！" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormText
              name="phone"
              label={intl.formatMessage({
                id: 'system.Dept.phone',
                defaultMessage: '联系电话',
              })}
              width="xl"
              placeholder="请输入联系电话"
              rules={[
                {
                  required: false,
                  message: (
                    <FormattedMessage id="请输入联系电话！" defaultMessage="请输入联系电话！" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
        <Row gutter={[16, 16]}>
          <Col span={24} order={1}>
            <ProFormRadio.Group
              valueEnum={statusOptions}
              name="warehouseAdminId"
              label="负责人"
              labelCol={{ span: 24 }}
              width="xl"
              placeholder="请选择部门负责人"
              rules={[
                {
                  required: false,
                  message: (
                    <FormattedMessage id="请选择部门负责人！" defaultMessage="请选择部门负责人！" />
                  ),
                },
              ]}
            />
          </Col>
        </Row>
      </Form>
    </Modal>
  );
};

export default DeptForm;
