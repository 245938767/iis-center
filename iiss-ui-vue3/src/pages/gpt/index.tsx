import React, { useEffect, useLayoutEffect, useRef, useState } from 'react';
import styles from './components/home.module.less';
import { Button, Skeleton } from 'antd';

import { PageLoading } from '@ant-design/pro-layout';
import WrapContent from '@/components/WrapContent';
import style from './index.less';
import InfiniteScroll from 'react-infinite-scroll-component';
import { getInfo } from '@/services/openAI/openAiController';
import { getUserInfo } from '@/services/session';
import LineData from './LineData';
import { sseChatUsingPOST } from '@/services/openAI/aisseController';

function useScrollToBottom() {
  // for auto-scroll
  const scrollRef = useRef<InfiniteScroll>(null);
  const [autoScroll, setAutoScroll] = useState(true);

  // auto scroll
  useLayoutEffect(() => {
    const dom = scrollRef.current;
    if (dom && autoScroll) {
      setTimeout(() => (dom.getScrollableTarget.scrollTop = dom.getScrollableTarget.scrollHeight), 1);
    }
  });

  return {
    scrollRef,
    autoScroll,
    setAutoScroll,
  };
}
export enum SubmitKey {
  Enter = 'Enter',
  CtrlEnter = 'Ctrl + Enter',
  ShiftEnter = 'Shift + Enter',
  AltEnter = 'Alt + Enter',
  MetaEnter = 'Meta + Enter',
}

const useHasHydrated = () => {
  const [hasHydrated, setHasHydrated] = useState<boolean>(false);

  useEffect(() => {
    setHasHydrated(true);
  }, []);

  return hasHydrated;
};
const OpenAI: React.FC = () => {
  const [message, setMessage] = useState<API.OpenAiResponse[]>([]);
  const loading = !useHasHydrated();
  const [userInput, setUserInput] = useState('');
  const [Input, setInputs] = useState('');

  const { scrollRef, setAutoScroll } = useScrollToBottom();
  const inputRef = useRef<HTMLTextAreaElement>(null);

  const [loadingList, setLoadingList] = useState(false);
  const [dataLine, setDataLine] = useState<string>('');
  const [userId, setUserId] = useState<string>();
  const loadingInfo = () => {
    getInfo()
      .then((res) => {
        setMessage(res.result);
      })
      .catch((x) => {
        setMessage([]);
      });
  };
  useEffect(() => {
 loadingInfo();
setAutoScroll(true)
    //获得数据
  }, []);
  useEffect(() => {
    console.info('dataLine');
    console.info(dataLine);
  }, [dataLine]);
  const onUserSubmit = async () => {
    // const accessToken = getAccessToken();
    const userInfomation = await getUserInfo();
    if (userInfomation.user == null || userInfomation.user.userId == null) {
      return;
    }
    const sse = new EventSource(
      'api/openAI/openai/sse/v1/createSse/' + userInfomation.user?.userId,
      {
        // Headers:{
        //  'Authorization':`Bearer ${accessToken}`
        // }
      },
    );
    function handleData(datainfo: string) {
      setDataLine(datainfo);
    }
    //接收数据
    sse!.onmessage = (e: { lastEventId: string; data: string }) => {
      // console.info(e);
      if (e.lastEventId == '[TOKENS]') {
        handleData(dataLine + e.data);
        return;
      }
      if (e.data == '[DONE]') {
        if (sse) {
          sse.close();
          //清空data，设置到主要数据中去
          handleData('');
          //设置到主要数据中
          loadingInfo();
        }
        return;
      }
      const json_data = JSON.parse(e.data);
      if (json_data.content == null || json_data.content == 'null') {
        return;
      }
      handleData(dataLine + json_data.content);
    };
    sse!.onerror = (event) => {
      console.error('EventSource error:', event);
    };
    //获得input数据
    setLoadingList(true);
    await sseChatUsingPOST({ msg: Input })
      .then((x) => {
        setLoadingList(false);
        loadingInfo();
      })
      .catch((x) => setLoadingList(false));
  };

  const onInput = (x: string) => {
    //设置当前输入
    setInputs(x);
  };
  if (loading) {
    return <PageLoading />;
  }
  const load = () => {
    console.info('load');
  };
  return (
    <WrapContent>
      <div
        id="scrollableDiv"
        className={style['window-container']}
        style={{
          height: 400,
          overflow: 'auto',
          padding: '0 16px',
          border: '1px solid rgba(140, 140, 140, 0.35)',
        }}
      >
        <InfiniteScroll
          dataLength={message.length}
          ref={scrollRef}
          next={load}
          hasMore={false}
          loader={<Skeleton avatar paragraph={{ rows: 1 }} active />}
          endMessage={<div />}
          scrollableTarget="scrollableDiv"
        >
          {message?.map((me, i) => (
            <LineData key={i} me={me} />
          ))}
          {/* 加载正在运行中的数据 */}
          {dataLine != '' ? (
            <LineData
              key={99999}
              me={{
                content: dataLine,
                createdAt: Date.parse(new Date().toString()),
                id: 99999,
                updatedAt: Date.parse(new Date().toString()),
                user: false,
                userId: 1,
              }}
            />
          ) : (
            <></>
          )}
        </InfiniteScroll>
      </div>
      <div>
        <div className={styles['chat-input-panel']}>
          {/* <PromptHints prompts={promptHints} onPromptSelect={onPromptSelect} /> */}
          <div className={styles['chat-input-panel-inner']}>
            {/* <ProFormText width="xl" name="name" label="name" /> */}

            <textarea
              // ref={inputRef}
              className={styles['chat-input']}
              placeholder={'输入'}
              onInput={(e) => onInput(e.currentTarget.value)}
              // value={userInput}
              // onKeyDown={onInputKeyDown}
              // onFocus={() => setAutoScroll(true)}
              onBlur={() => {
                // setAutoScroll(false);
                //   setTimeout(() => setPromptHints([]), 500);
              }}
              // autoFocus={!props?.sideBarShowing}
              // rows={inputRows}
            />
            <Button
              // icon={<SendWhiteIcon />}
              // text={"发送"}
              className={styles['chat-input-send']}
              // noDark
              onClick={onUserSubmit}
            >
              send
            </Button>
          </div>
        </div>
      </div>
    </WrapContent>
  );
};

export default OpenAI;
