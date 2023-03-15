import type { ModalBaseProps } from '@/types';
import type { ModalFormProps } from '@ant-design/pro-form';
import { ModalForm } from '@ant-design/pro-form';
import { useEffect } from 'react';

export type BaseModalFormProps = ModalFormProps & ModalBaseProps;

const BaseModalForm: React.FC<BaseModalFormProps> = (props) => {
  const { onDone, ...resetProps } = props;

  useEffect(() => {
    if (props.visible === false) {
      onDone?.();
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [props.visible]);

  return (
    <ModalForm
      modalProps={{
        destroyOnClose: true,
        maskClosable: false,
      }}
      preserve={false}
      {...resetProps}
    />
  );
};

export default BaseModalForm;
