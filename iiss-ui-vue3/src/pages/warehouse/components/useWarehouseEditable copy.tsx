import type { AlertProps } from 'antd';
import { Alert } from 'antd';
import { useEffect, useMemo, useState } from 'react';

const useWarehouseEditable = (
  warehouseId: number | undefined,
  alertProps?: Partial<AlertProps>,
): [boolean, JSX.Element | undefined] => {
  const [editable, setEditable] = useState<boolean>(true);

  useEffect(() => {
    // if (warehouseId) {
    //   getRoleIsOptionUsingPOST({ warehouseId }).then((resp) => {
    //     if (!resp) return;
    //     setEditable(resp.data);
    //   });
    // } else {
      setEditable(true);
    // }
  }, [warehouseId]);

  const noPermissionDom = useMemo(() => {
    if (editable) return undefined;
    return (
      <>
        <Alert
          message={'您没有填写价税信息的权限，请提交完成后联系仓库管理员审核！'}
          type={'warning'}
          showIcon
          {...alertProps}
        />
        <br />
      </>
    );
  }, [alertProps, editable]);

  return [editable, noPermissionDom];
};

export default useWarehouseEditable;
