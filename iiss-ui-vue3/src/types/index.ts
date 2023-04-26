export interface UserInfo {
  user?: API.yonghuduixiangSysUser;
  permissions?: string[];
  roles?: string[];
}

export type ModalBaseProps = {
  visible?: boolean;
  onVisibleChange?: (visible: boolean) => void;
  onClose?: () => void;
  onDone?: (...args: any[]) => void;
};

