import BaseModalForm from '@/components/Base/BaseModalForm';
import { addNewGoods } from '@/services/peoduct/productController';
import type { ModalBaseProps } from '@/types';
import type { ProFormInstance } from '@ant-design/pro-form';
import { message } from 'antd';
import React, { useCallback, useEffect, useRef } from 'react';
import GoodsFields from './GoodsFields';

type GoodsCreatorProps = {
  trigger?: JSX.Element;
} & ModalBaseProps;

const GoodsCreator: React.FC<GoodsCreatorProps> = (props) => {
  const formRef = useRef<ProFormInstance>();

  const handleFinish = useCallback(
    async (formData) => {
      return addNewGoods({ parentId: 0, ...formData }).then((resp) => {
        if (!resp) return false;
        message.success(resp.msg);
        props.onDone?.();
        return true;
      });
    },
    [props],
  );


  return (
    <BaseModalForm formRef={formRef} title={`新增商品`} onFinish={handleFinish} {...props}>
      <GoodsFields />
    </BaseModalForm>
  );
};

export default GoodsCreator;
