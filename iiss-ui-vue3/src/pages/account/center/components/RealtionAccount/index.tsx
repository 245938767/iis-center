import { Avatar, Form, List, Modal } from 'antd';
import { authBindingUsingGET } from '@/services/system/sysAuthController';
import Icon, { GithubOutlined } from '@ant-design/icons';
import GiteeIcon from '@/components/svg/giteesvg';

const RealationAccount: React.FC = () => {
  const data = [
    {
      key: 'gitee',
      title: <a href="#">关联Gitee</a>,
      icon: <GiteeIcon />,
      describe: '将当前的账号和你的Gitee账号关联',
    },
    {
      key: 'github',
      title: '关联Github',
      icon: <GithubOutlined style={{ fontSize: '32px' }} />,
      describe: '将当前的账号和你的Github账号关联',
    },
  ];
  const realation = async (str: string) => {
    console.info('进入');
    const res = await authBindingUsingGET({ source: str });
    window.location.href = res.msg;
  };

  return (
    <>
      <List
        itemLayout="horizontal"
        dataSource={data}
        renderItem={(item, index) => (
          <List.Item>
            <List.Item.Meta
              avatar={item.icon}
              title={<div onClick={() => realation(item.key)}>{item.title}</div>}
              description={item.describe}
            />
          </List.Item>
        )}
      />
    </>
  );
};

export default RealationAccount;
