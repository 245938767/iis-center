import { getGoodsInfo, updateGoods } from '@/services/peoduct/productController';
import type { ModalBaseProps } from '@/types';
import type { ProFormInstance } from '@ant-design/pro-form';
import { ModalForm } from '@ant-design/pro-form';
import { message } from 'antd';
import { lastIndexOf } from 'lodash';
import React, { useCallback, useEffect, useRef, useState } from 'react';
import type { GoodsType } from '.';
import GoodsFields from './GoodsFields';

type GoodsEditorProps = {
  goodsId: number;
  trigger?: JSX.Element;
} & ModalBaseProps;

const GoodsEditor: React.FC<GoodsEditorProps> = (props) => {
  const formRef = useRef<ProFormInstance>();
  const [dataSource, setDataSource] = useState<GoodsType>();

  useEffect(() => {
    if (props.visible === true && props.goodsId) {
      getGoodsInfo({ id: props.goodsId }).then((res) => {
        if (!res) return;
        // const imgUrl = res.data.productImg;
        formRef.current?.setFieldsValue({
          ...res?.data,
          // productImg: [
          //   {
          //     uid: '-1',
          //     name: (imgUrl as string).substring(lastIndexOf(imgUrl, '/') + 1) || 'image.png',
          //     status: 'done',
          //     url: res.data.productImg,
          //   },
          // ],
          // parentId: res?.data?.parentId == 0 ? undefined : res?.data?.parentId,
        });
        setDataSource(res.data);
      });
    }
  }, [props.goodsId, props.visible]);

  const handleFinish = useCallback(
    async (formData) => {
      return updateGoods({ ...dataSource, ...formData }).then((resp) => {
        if (!resp) return false;
        message.success(resp.msg);
        props.onDone?.();
        return true;
      });
    },
    [dataSource, props],
  );

  return (
    <ModalForm
      formRef={formRef}
      trigger={props.trigger}
      title={`修改商品`}
      visible={props.visible}
      modalProps={{
        destroyOnClose: true,
        maskClosable: false,
      }}
      onVisibleChange={props.onVisibleChange}
      onFinish={handleFinish}
      preserve={false}
    >
      <GoodsFields />
    </ModalForm>
  );
};

export default GoodsEditor;
