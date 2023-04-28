import { orderComplete } from '@/services/trade/orderBaseController';
import { ModalBaseProps } from '@/types';
import { ModalForm, ProFormInstance, ProFormText } from '@ant-design/pro-form';
import { Button, message } from 'antd';
import React from 'react';
import { useRef } from 'react';

type OrderUploadProps = {
  flowId: React.Key;
} & ModalBaseProps;
const OrderUpload: React.FC<OrderUploadProps> = (props) => {
  const [loading, setLoading] = React.useState(true);
  const formRef = useRef<ProFormInstance>();

  return (
    <>
      <ModalForm
        title="支付订单"
        formRef={formRef}
        visible={props.visible}
        trigger={
          <Button
            type="primary"
            onClick={() => {
              //   setModalVisible(true);
            }}
          >
            支付订单
          </Button>
        }
        // onOpenChange={setModalVisible}
        submitter={{
          searchConfig: {
            resetText: '重置',
          },
          resetButtonProps: {
            onClick: () => {
              formRef.current?.resetFields();
              //   setModalVisible(false);
            },
          },
        }}
        onFinish={async (values) => {
          console.log(values);
          return orderComplete({ id: props.flowId } as API.orderCompleteParams)
            .then((res) => {
              message.success('提交成功');
              return true;
            })
            .catch((x) => {
              message.error('失败');
              return false;
            });
        }}
      >
        <ProFormText width="md" name="company" label="金额" placeholder="请输入名称" />
      </ModalForm>
    </>
  );
};
export default OrderUpload;
