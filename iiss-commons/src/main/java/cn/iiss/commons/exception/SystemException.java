package cn.iiss.commons.exception;

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
