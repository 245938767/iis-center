import { EditOutlined } from '@ant-design/icons';

const TableActionEdit = (props: { onClick?: () => any }) => {
  return (
    <a {...props}>
      <EditOutlined />
      <span>编辑</span>
    </a>
  );
};

export default TableActionEdit;
