import React, { useEffect, useLayoutEffect, useRef, useState } from 'react';
import styles from './components/home.module.less';
import { AndroidFilled, GithubFilled, UsbFilled } from '@ant-design/icons';
import { Markdown } from './components/markdown';
import { copyToClipboard, getEmojiUrl, selectOrCopy } from './components/utils';
import { Avatar, Button } from 'antd';
import { ProFormText } from '@ant-design/pro-form';
// import { Emoji } from 'emoji-picker-react';

export type Message = {
  date: string
  streaming?: boolean;
  isError?: boolean;
  content: string;
  role: string;
  id?: number;
};
export function BOTAvatar() {
  return (
    <div className={styles['user-avtar']}>
      <Avatar></Avatar>
      {/* <Emoji  size={18} getEmojiUrl={getEmojiUrl} unified={'1f603'} /> */}
    </div>
  );
}
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
  Enter = "Enter",
  CtrlEnter = "Ctrl + Enter",
  ShiftEnter = "Shift + Enter",
  AltEnter = "Alt + Enter",
  MetaEnter = "Meta + Enter",
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
  const { scrollRef, setAutoScroll } = useScrollToBottom();
  const loading = !useHasHydrated();
  const [userInput, setUserInput] = useState('');
  const [beforeInput, setBeforeInput] = useState("");

  const inputRef = useRef<HTMLTextAreaElement>(null);

  const [hitBottom, setHitBottom] = useState(false);

  const messages: Message[] = [
    { date: '2022年2月22日', role: 'bot', id: 123, content: '# 你好存体' },
    { date: '2022年2月23日', role: 'bot', id: 1234, content: '你好人类' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
    { date: '2022年2月24日', role: 'user', id: 1235, content: '你好gpt机器人' },
  ];
  const onInputKeyDown = (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
    // if ArrowUp and no userInput
    if (e.key === "ArrowUp" && userInput.length <= 0) {
      setUserInput(beforeInput);
      e.preventDefault();
      return;
    }
  };
  const onRightClick = (e: any, message: Message) => {
    // auto fill user input
    if (message.role === 'user') {
      setUserInput(message.content);
    }

    // copy to clipboard
    if (selectOrCopy(e.currentTarget, message.content)) {
      e.preventDefault();
    }
  };
  const onChatBodyScroll = (e: HTMLElement) => {
    const isTouchBottom = e.scrollTop + e.clientHeight >= e.scrollHeight - 20;
    setHitBottom(isTouchBottom);
  };
  useEffect(() => {
    //获得数据
  }, [message]);
  // if (loading) {
  //     return <PageLoading/>;
  //   }
  return (
    <>
      <div className={styles['window-content']}>
        <div className={styles.chat} key={1}>
          <div
            className={styles['chat-body']}
            ref={scrollRef}
            onScroll={(e) => onChatBodyScroll(e.currentTarget)}
            onWheel={(e) => setAutoScroll(hitBottom && e.deltaY > 0)}
            onTouchStart={() => {
              inputRef.current?.blur();
              setAutoScroll(false);
            }}
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
                      <BOTAvatar />
                    </div>
                    {message.streaming && (
                      <div className={styles['chat-message-status']}>{'正在输入...'}</div>
                    )}
                    <div className={styles['chat-message-item']}>
                      {!isUser && !(message.content.length === 0) && (
                        <div className={styles['chat-message-top-actions']}>
                          {message.streaming ? (
                            <div
                              className={styles['chat-message-top-action']}
                              // onClick={() => onUserStop(message.id ?? i)}
                            >
                              {'停止'}
                            </div>
                          ) : (
                            <div
                              className={styles['chat-message-top-action']}
                              // onClick={() => onResend(i)}
                            >
                              {'重试'}
                            </div>
                          )}

                          <div
                            className={styles['chat-message-top-action']}
                            onClick={() => copyToClipboard(message.content)}
                          >
                            {'复制'}
                          </div>
                        </div>
                      )}
                      {message.content.length === 0 && !isUser ? (
                        <BOTAvatar />
                      ) : (
                        <div
                          className="markdown-body"
                          style={{ fontSize: `16px` }}
                          onContextMenu={(e) => onRightClick(e, message)}
                          onDoubleClickCapture={() => {
                            setUserInput(message.content);
                          }}
                        >
                          {message.content}
                          {/* <Markdown content={message.content} /> */}
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
          </div>

          <div className={styles['chat-input-panel']}>
            {/* <PromptHints prompts={promptHints} onPromptSelect={onPromptSelect} /> */}
            <div className={styles['chat-input-panel-inner']}>
            <ProFormText width="xl" name="name" label="name" />

              {/* <textarea
                ref={inputRef}
                className={styles['chat-input']}
                placeholder={'输入'}
                // onInput={(e) => onInput(e.currentTarget.value)}
                value={userInput}
                onKeyDown={onInputKeyDown}
                onFocus={() => setAutoScroll(true)}
                onBlur={() => {
                  setAutoScroll(false);
                  //   setTimeout(() => setPromptHints([]), 500);
                }}
                // autoFocus={!props?.sideBarShowing}
                // rows={inputRows}
              /> */}
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
      </div>
    </>
  );
};

export default OpenAI;
