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
import { getChat, getInfo } from '@/services/openAI/openAiController';
import moment from 'moment';

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
  const [message, setMessage] = useState<API.OpenAiResponse[]>([]);
  const loading = !useHasHydrated();
  const [userInput, setUserInput] = useState('');
  const [Input, setInputs] = useState('');

  const inputRef = useRef<HTMLTextAreaElement>(null);

  const [loadingList, setLoadingList] = useState(false);

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
    //获得数据
  }, []);
  const onUserSubmit = () => {
    //获得input数据
    setLoadingList(true);
    getChat({ message: Input })
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
    <>
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
            next={load}
            hasMore={false}
            loader={<Skeleton avatar paragraph={{ rows: 1 }} active />}
            endMessage={<div></div>}
            scrollableTarget="scrollableDiv"
          >
            {message?.map((me, i) => {
              const isUser = me.user;
              return (
                <div
                  key={i}
                  className={isUser ? styles['chat-message-user'] : styles['chat-message']}
                >
                  <div className={styles['chat-message-container']}>
                    <div className={styles['chat-message-avatar']}>
                      <Avatar />
                    </div>
                    {/* {me.streaming && (
                      <div className={styles['chat-message-status']}>{'正在输入...'}</div>
                    )} */}
                    <div className={styles['chat-message-item']}>
                      {!isUser && !(me.content.length === 0) && (
                        <div className={styles['chat-message-top-actions']}>
                          <div
                            className={styles['chat-message-top-action']}
                            onClick={() => copyToClipboard(me.id.toString())}
                          >
                            {'删除'}
                          </div>
                          <div
                            className={styles['chat-message-top-action']}
                            // onClick={() => onResend(i)}
                          >
                            {'重试'}
                          </div>

                          <div
                            className={styles['chat-message-top-action']}
                            onClick={() => copyToClipboard(me.content)}
                          >
                            {'复制'}
                          </div>
                        </div>
                      )}
                      {me.content.length === 0 && !isUser ? (
                        <Avatar />
                      ) : (
                        <div
                          className="markdown-body"
                          style={{ fontSize: `16px` }}
                          // onContextMenu={(e) => onRightClick(e, message)}
                          onDoubleClickCapture={() => {
                            setUserInput(me.content);
                          }}
                        >
                          <Markdown content={me.content} />
                        </div>
                      )}
                    </div>
                    {!isUser && (
                      <div className={styles['chat-message-actions']}>
                        <div className={styles['chat-message-action-date']}>
                          {moment(me.createdAt).format('YYYY-MM-DD HH:mm:ss')}
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
    </>
  );
};

export default OpenAI;
