import { Avatar, Row } from 'antd';

import styles from './components/home.module.less';

import { copyToClipboard, getEmojiUrl, selectOrCopy } from './components/utils';
import { Markdown } from './components/markdown';
import moment from 'moment';
type DataLineFormProps = {
  me: API.OpenAiResponse;
};

const LineData = (props: DataLineFormProps) => {
  const { me } = props;

  const isUser = me.user;
  return (
    <div className={isUser ? styles['chat-message-user'] : styles['chat-message']}>
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
                // setUserInput(me.content);
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
};
export default LineData;
