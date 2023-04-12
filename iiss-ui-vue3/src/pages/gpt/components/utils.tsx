import type { EmojiStyle } from "emoji-picker-react";
import styles from "./ui-lib.module.less";

export type ToastProps = {
    content: string;
    action?: {
      text: string;
      onClick: () => void;
    };
  };
  export function Toast(props: ToastProps) {
    return (
      <div className={styles["toast-container"]}>
        <div className={styles["toast-content"]}>
          <span>{props.content}</span>
          {props.action && (
            <button
              onClick={props.action.onClick}
              className={styles["toast-action"]}
            >
              {props.action.text}
            </button>
          )}
        </div>
      </div>
    );
  }
export function showToast(
    content: string,
    action?: ToastProps["action"],
    delay = 3000,
  ) {
    const div = document.createElement("div");
    div.className = styles.show;
    document.body.appendChild(div);
  
    // const root = createRoot(div);
    const close = () => {
      div.classList.add(styles.hide);
  
      setTimeout(() => {
        // root.unmount();
        div.remove();
      }, 300);
    };
  
    setTimeout(() => {
      close();
    }, delay);
  
    return(<Toast content={content} action={action} />);
  }

export function trimTopic(topic: string) {
  return topic.replace(/[，。！？”“"、,.!?]*$/, "");
}

export async function copyToClipboard(text: string) {
  try {
    await navigator.clipboard.writeText(text);
    showToast("已写入剪切版");
  } catch (error) {
    const textArea = document.createElement("textarea");
    textArea.value = text;
    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();
    try {
      document.execCommand("copy");
      showToast("已写入剪切板");
    } catch (e) {
      showToast("写入失败，请给予剪切版权限");
    }
    document.body.removeChild(textArea);
  }
}

export function downloadAs(text: string, filename: string) {
  const element = document.createElement("a");
  element.setAttribute(
    "href",
    "data:text/plain;charset=utf-8," + encodeURIComponent(text),
  );
  element.setAttribute("download", filename);

  element.style.display = "none";
  document.body.appendChild(element);

  element.click();

  document.body.removeChild(element);
}

export function isIOS() {
  const userAgent = navigator.userAgent.toLowerCase();
  return /iphone|ipad|ipod/.test(userAgent);
}

export function isMobileScreen() {
  return window.innerWidth <= 600;
}

export function isFirefox() {
  return (
    typeof navigator !== "undefined" && /firefox/i.test(navigator.userAgent)
  );
}

export function selectOrCopy(el: HTMLElement, content: string) {
  const currentSelection = window.getSelection();

  if (currentSelection?.type === "Range") {
    return false;
  }

  copyToClipboard(content);

  return true;
}

export function getEmojiUrl(unified: string, style: EmojiStyle) {
  return `https://cdn.staticfile.org/emoji-datasource-apple/14.0.0/img/${style}/64/${unified}.png`;
}

function getDomContentWidth(dom: HTMLElement) {
  const style = window.getComputedStyle(dom);
  const paddingWidth =
    parseFloat(style.paddingLeft) + parseFloat(style.paddingRight);
  const width = dom.clientWidth - paddingWidth;
  return width;
}

function getOrCreateMeasureDom(id: string, init?: (dom: HTMLElement) => void) {
  let dom = document.getElementById(id);

  if (!dom) {
    dom = document.createElement("span");
    dom.style.position = "absolute";
    dom.style.wordBreak = "break-word";
    dom.style.fontSize = "14px";
    dom.style.transform = "translateY(-200vh)";
    dom.style.pointerEvents = "none";
    dom.style.opacity = "0";
    dom.id = id;
    document.body.appendChild(dom);
    init?.(dom);
  }

  return dom!;
}

export function autoGrowTextArea(dom: HTMLTextAreaElement) {
  const measureDom = getOrCreateMeasureDom("__measure");
  const singleLineDom = getOrCreateMeasureDom("__single_measure", (dom) => {
    dom.innerText = "TEXT_FOR_MEASURE";
  });

  const width = getDomContentWidth(dom);
  measureDom.style.width = width + "px";
  measureDom.innerHTML = dom.value.trim().length > 0 ? dom.value : "1";

  const lineWrapCount = Math.max(0, dom.value.split("\n").length - 1);
  const height = parseFloat(window.getComputedStyle(measureDom).height);
  const singleLineHeight = parseFloat(
    window.getComputedStyle(singleLineDom).height,
  );

  const rows = Math.round(height / singleLineHeight) + lineWrapCount;

  return rows;
}
