import WrapContent from '@/components/WrapContent';
import NoFoundPage from '@/pages/404';
import { socialLoginUsingGET } from '@/services/system/sysAuthController';
import { Spin } from 'antd';
import { history } from 'umi';
import { useEffect, useState } from 'react';
import { setSessionToken } from '@/access';

function Auth(props: { location: { search: string; query: any } }) {
  const [message, setMessage] = useState('正在验证第三方应用账户数据，请稍候');
  const [show, setshow] = useState(false);
  useEffect(() => {
    console.info(props.location);
    if (props.location.search === '') {
      setshow(true);
      setMessage('请检查你的链接是否正确！！！');
    }
    const query = props.location.query;

    socialLoginUsingGET({ source: query.source, code: query.code, state: query.state }).then(
      (code) => {
        console.info(code);
        if (code.code === 200) {
          const current = new Date();
          const expireTime = current.setTime(current.getTime() + 1000 * 12 * 60 * 60);
          setSessionToken(code.token, code.token, expireTime);
          console.info(code);
          history.push(query.redirect || '/');
          setshow(true);
        } else {
          setMessage(code.msg);
          setshow(true);
        }
      },
    );
  }, []);

  return (
    <>
      <WrapContent>
        <Spin tip={message} size="large">
          <div className="content" />
        </Spin>
        <NoFoundPage style={{ display: show }} />
      </WrapContent>
    </>
  );
}
export default Auth;
