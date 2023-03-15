import { getCategoryTree, getTreeWithDisabled } from '@/services/peoduct/categoryController';
import { fieldTree } from '@/utils';
import { ModalForm, ProFormText, ProFormTreeSelect } from '@ant-design/pro-form';
import { PageContainer } from '@ant-design/pro-layout';
import { Col } from 'antd';

type CategoryFormProps = React.ComponentProps<typeof ModalForm> & {
  value?: API.Category;
};

function CategoryForm(props: CategoryFormProps) {
  return (
    <ModalForm
      {...props}
      modalProps={{
        ...props.modalProps,
        destroyOnClose: true,
        maskClosable: false,
      }}
    >
      <PageContainer>
        <Col flex={'50%'}>
          <ProFormText
            label="分类名"
            name="name"
            initialValue={props.value?.name}
            required
            rules={[{ required: true, message: '这是必填项' }]}
          />
        </Col>
        <Col flex={'50%'}>
          <ProFormTreeSelect
            label="上级分类"
            name="parentId"
            initialValue={props.value?.parentId || undefined}
            placeholder="请选择"
            fieldProps={{
              treeDefaultExpandAll: true,
              allowClear: true,
              showSearch: true,
              treeNodeFilterProp: 'title',
              dropdownStyle: { maxHeight: 500, overflow: 'auto' },
            }}
            request={async () => {
              const { data = [] } = await getCategoryTree();
              if (props.value?.id) {
                const res = await getTreeWithDisabled({ targetId: props.value.id }, data);
                return fieldTree(res.data, {
                  title: 'name',
                  value: 'id',
                  disabled: 'isDisabled',
                });
              }
              return fieldTree(data, {
                title: 'name',
                value: 'id',
              });
            }}
          />
        </Col>
      </PageContainer>
    </ModalForm>
  );
}

export default CategoryForm;
