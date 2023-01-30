package cn.iiss.common.exception;

/**
 * 系统异常
 *  xiao
 **/
public class SystemException extends RuntimeException {

  private String msg;

  public SystemException(String msg) {
    super(msg);
    this.msg = msg;
  }
}
