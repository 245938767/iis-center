import { detail } from '@/services/logistics/logisticsController';
import { ModalBaseProps } from '@/types';
import { DrawerForm, ProFormInstance } from '@ant-design/pro-form';
import { RowSelectionType } from 'antd/lib/table/interface';
import Skeleton from '@ant-design/pro-skeleton';
import React, { useRef } from 'react';
import { Card } from 'antd';
import ProDescriptions from '@ant-design/pro-descriptions';

// const TABLE_NAME = 'warehouseAgreeProductList';
type LogisticsSheetProps = {
  logisticsId: React.Key;
  selection?: {
    type: RowSelectionType;
  };
} & ModalBaseProps;

const LogisticsSheet: React.FC<LogisticsSheetProps> = (props) => {
  const [loading, setLoading] = React.useState(true);
  const [dataSource, setDataSource] = React.useState<any>();
  const formRef = useRef<ProFormInstance>();

  React.useEffect(() => {
    if (!props.visible) {
      setDataSource(undefined);
      setLoading(true);
      return;
    }
    //获得数据
    detail({ id: props.logisticsId } as API.detailParams).then((res) => {
      if (!res) return;
      setDataSource(res.result);
      setLoading(false);
    });
  }, [props.logisticsId, props.visible]);

  return (
    <>
      <DrawerForm
        width={1000}
        visible={props.visible}
        formRef={formRef}
        onVisibleChange={props.onVisibleChange}
        drawerProps={{
          maskClosable: false,
          destroyOnClose: true,
        }}
        //   submitter={{ render: submitterRender }}
      >
        {loading ? <Skeleton type="descriptions" /> : <>
        
        
          <Card>
            <ProDescriptions column={4} title="物流信息" dataSource={dataSource}>
              <ProDescriptions.Item label="流水号" dataIndex={'flowNo'} valueType="text" />
              <ProDescriptions.Item label="费用" dataIndex={'freight'} valueType="money" />
              <ProDescriptions.Item label="仓库名称" dataIndex={'warehouseName'} valueType="text" />
              <ProDescriptions.Item
                label="商品来源"
                dataIndex={'inOutTypeName'}
                valueType="text"
              />
              <ProDescriptions.Item
                label="商品属性"
                dataIndex={'inOutBizTypeName'}
                valueType="text"
              />
              {/* {dataSource.warehouseProductAdjustName && (
                <ProDescriptions.Item
                  label="调往仓库"
                  dataIndex={['warehouseProductAdjustName', 'to']}
                  valueType="text"
                />
              )} */}
            </ProDescriptions>
          </Card>
          <br />
        
        </>}
      </DrawerForm>
    </>
  );
};
export default LogisticsSheet;
