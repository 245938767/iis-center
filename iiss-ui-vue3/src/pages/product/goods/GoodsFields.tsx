import { getCategoryTree } from '@/services/peoduct/categoryController';
import ProForm, {
  ProFormText,
  ProFormTreeSelect,
  ProFormTextArea,
} from '@ant-design/pro-form';
import React from 'react';

const GoodsFields: React.FC = () => {
  return (
    <>
      <ProFormText
        width="md"
        name={'productCode'}
        label="编号"
        placeholder="请输入"
        required
        rules={[{ required: true, message: '这是必填项' }]}
      />
      <ProFormText
        width="md"
        name={'productName'}
        label="商品名"
        placeholder="请输入"
        required
        rules={[{ required: true, message: '这是必填项' }]}
      />
      <ProFormTreeSelect
        params={undefined}
        width="md"
        label="商品分类"
        name="categoryId"
        formItemProps={{
          rules: [{ required: true, message: '这是必选项' }],
        }}
        allowClear
        fieldProps={{
          showSearch: true,
          fieldNames: { label: 'name', value: 'id' },
        }}
        placeholder="请选择"
        request={async () => {
          return getCategoryTree().then((res) => {
            if (!res) return [];
            return res.data;
          });
        }}
      />
      <ProForm.Group>
        <ProFormText width="xs" name={'brand'} label="品牌" placeholder="请输入" />
        <ProFormText width="xs" name={'productSpecification'} label="规格" placeholder="请输入" />
        <ProFormText width="xs" name={'model'} label="型号" placeholder="请输入" />
        <ProFormText width="xs" name={'unit'} label="单位" placeholder="请输入" />
      </ProForm.Group>
      <ProForm.Group>
        <ProFormText width="sm" name={'purchasePrice'} label="采购价格" placeholder="请输入" />
        <ProFormText width="sm" name={'sellingPrice'} label="销售价格" placeholder="请输入" />
      </ProForm.Group>
      <ProForm.Group>
        <ProFormTextArea
          width="lg"
          name={'note'}
          label="备注"
          placeholder="请输入"
          fieldProps={{ autoSize: { minRows: 2, maxRows: 6 } }}
        />
      </ProForm.Group>
      {/* <ProForm.Group>
        <ProFormUploadButton
          label="商品图片"
          name="goodsImg"
          action="/dev-api/uploadMinio"
          max={1}
          initialValue={[]}
          transform={(value, namePath) => {
            return {
              [namePath]: get(value, ['0', 'response', 'fileName']),
            };
          }}
          fieldProps={{
            headers: { Authorization: `Bearer ${getToken()}` },
            name: 'file',
            beforeUpload: (file) => {
              if (file.type !== 'image/png' && file.type !== 'image/jpeg') {
                message.error(`${file.name} 不是图片文件`);
              }
              return file.type === 'image/png' || file.type === 'image/jpeg'
                ? true
                : Upload.LIST_IGNORE;
            },
          }}
          listType="picture-card"
        />
      </ProForm.Group> */}
    </>
  );
};

export default GoodsFields;
