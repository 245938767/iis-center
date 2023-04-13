import React, { useEffect, useLayoutEffect, useRef, useState } from 'react';
import styles from './components/home.module.less';
import { AndroidFilled, GithubFilled, UsbFilled } from '@ant-design/icons';
import { Markdown } from './components/markdown';
import { copyToClipboard, getEmojiUrl, selectOrCopy } from './components/utils';
import { Avatar, Button, Divider, Skeleton } from 'antd';
import { ProFormText } from '@ant-design/pro-form';
import { PageLoading } from '@ant-design/pro-layout';
import WrapContent from '@/components/WrapContent';
import style from './index.less';
import InfiniteScroll from 'react-infinite-scroll-component';
// import { Emoji } from 'emoji-picker-react';
import List from 'rc-virtual-list';

export type Message = {
  date: string;
  streaming?: boolean;
  isError?: boolean;
  content: string;
  role: string;
  id?: number;
};
function useScrollToBottom() {
  // for auto-scroll
  const scrollRef = useRef<HTMLDivElement>(null);
  const [autoScroll, setAutoScroll] = useState(true);

  // auto scroll
  useLayoutEffect(() => {
    const dom = scrollRef.current;
    if (dom && autoScroll) {
      setTimeout(() => (dom.scrollTop = dom.scrollHeight), 1);
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
  const [message, setMessage] = useState([]);
  const loading = !useHasHydrated();
  const [userInput, setUserInput] = useState('');
  const [beforeInput, setBeforeInput] = useState('');

  const inputRef = useRef<HTMLTextAreaElement>(null);

  const [hitBottom, setHitBottom] = useState(false);
  const [loadingList, setLoadingList] = useState(false);

  const messages: Message[] = [
    { date: '2022年2月22日', role: 'bot', id: 123, content: '# 你好存体' },
    { date: '2022年2月23日', role: 'bot', id: 1234, content: '你好人类' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
  ];
  useEffect(() => {
    //获得数据
  }, [message]);
  if (loading) {
    return <PageLoading />;
  }
  const load = () => {
    console.info('load');
  };

  return (
    <>
      <WrapContent>
        {/* <InfiniteScroll
          dataLength={messages.length}
          next={load}
          hasMore={messages.length < 50}
          loader={<Skeleton avatar paragraph={{ rows: 1 }} active />}
          endMessage={<Divider plain>It is all, nothing more 🤐</Divider>}
          scrollableTarget="scrollableDiv"
        >
          {messages.map((messagex, i) => {
            const isUser = messagex.role === 'user';
            return (
              <div
                key={i}
                className={isUser ? styles['chat-message-user'] : styles['chat-message']}
              >
             
                        <div
                          className="markdown-body"
                          style={{ fontSize: `16px` }}
                        >
                          {messagex.content}
                        </div>

              </div>
            )
          })}
        </InfiniteScroll> */}

        {/* <List data={messages} height={200} itemHeight={30} itemKey="id">
  {index => {

            const isUser = index.role === 'user';
            return (
              <div
                key={index.id}
                className={isUser ? styles['chat-message-user'] : styles['chat-message']}
              >
             
                        <div
                          className="markdown-body"
                          style={{ fontSize: `16px` }}
                        >
                          {index.content}
                        </div>

              </div>
            )
          }}
</List>; */}
        <div id="scrollableDiv" className={style['window-container']} style={{
        height: 400,
        overflow: 'auto',
        padding: '0 16px',
        border: '1px solid rgba(140, 140, 140, 0.35)',
      }}>
          <InfiniteScroll
            dataLength={messages.length}
            next={load}
            hasMore={false}
            loader={<Skeleton avatar paragraph={{ rows: 1 }} active />}
            endMessage={<div></div>}
            scrollableTarget="scrollableDiv"
          >
            {messages.map((message, i) => {
              const isUser = message.role === 'user';
              return (
                <div
                  key={i}
                  className={isUser ? styles['chat-message-user'] : styles['chat-message']}
                >
                  <div className={styles['chat-message-container']}>
                    <div className={styles['chat-message-avatar']}>
                      <Avatar />
                    </div>
                    {message.streaming && (
                      <div className={styles['chat-message-status']}>{'正在输入...'}</div>
                    )}
                    <div className={styles['chat-message-item']}>
                      {!isUser && !(message.content.length === 0) && (
                        <div className={styles['chat-message-top-actions']}>
                          <div
                            className={styles['chat-message-top-action']}
                            // onClick={() => onResend(i)}
                          >
                            {'重试'}
                          </div>

                          <div
                            className={styles['chat-message-top-action']}
                            onClick={() => copyToClipboard(message.content)}
                          >
                            {'复制'}
                          </div>
                        </div>
                      )}
                      {message.content.length === 0 && !isUser ? (
                        <Avatar />
                      ) : (
                        <div
                          className="markdown-body"
                          style={{ fontSize: `16px` }}
                          // onContextMenu={(e) => onRightClick(e, message)}
                          onDoubleClickCapture={() => {
                            setUserInput(message.content);
                          }}
                        >
                          <Markdown content={message.content} />
                        </div>
                      )}
                    </div>
                    {!isUser && (
                      <div className={styles['chat-message-actions']}>
                        <div className={styles['chat-message-action-date']}>
                          {message.date.toLocaleString()}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              );
            })}
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
                // onInput={(e) => onInput(e.currentTarget.value)}
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
                // onClick={onUserSubmit}
              >send</Button>
            </div>
          </div>
        </div>
      </WrapContent>
    </>
  );
};

export default OpenAI;
