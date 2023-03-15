import { PlusOutlined } from '@ant-design/icons';

const TableActionAdd = (props: { onClick?: () => any; label?: string }) => {
  const { label, ...resetProps } = props;

  return (
    <a {...resetProps}>
      <PlusOutlined />
      <span>{label ? label : '新增'}</span>
    </a>
  );
};

export default TableActionAdd;
