package cn.iiss.security.base.extension;


import cn.iiss.security.base.BaseJwtUser;

/**
 * @author gim
 */
public interface UserContextAware {

  /**
   * 处理token
    * @param token
   * @return
   */
  BaseJwtUser processToken(String token);

}
