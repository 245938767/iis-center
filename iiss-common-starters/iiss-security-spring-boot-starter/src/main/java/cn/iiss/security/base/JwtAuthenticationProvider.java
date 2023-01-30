package cn.iiss.security.base;

import cn.iiss.common.constants.CodeEnum;
import cn.iiss.security.base.extension.UserContextAware;
import cn.iiss.security.exception.CustomAuthenticationException;
import cn.iiss.security.exception.ParseTokenException;
import java.util.Objects;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class JwtAuthenticationProvider extends BaseAuthenticationProvider implements
    AuthenticationProvider {

  private final UserContextAware userContextAware;

  public JwtAuthenticationProvider(
      UserContextAware userContextAware) {
      this.userContextAware = userContextAware;
  }

  @Override
  public Authentication authenticate(Authentication authentication) throws AuthenticationException {
    String token = (String) authentication.getCredentials();
    BaseJwtUser jwtUser = null;
    if (Objects.isNull(userContextAware)) {
      return authentication;
    } else {
      try{
        jwtUser = userContextAware.processToken(token);
      }catch (ParseTokenException e){
        throw new CustomAuthenticationException(e.getCode(),e.getMsg());
      }catch (Exception e){
        throw new CustomAuthenticationException(CodeEnum.SystemError.getCode(),CodeEnum.SystemError.getName());
      }
      UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
          jwtUser,
          null, jwtUser.getAuthorities());
      SecurityContextHolder.getContext().setAuthentication(authToken);
      return authToken;
    }
  }

  @Override
  public boolean supports(Class<?> authentication) {
    return JwtAuthToken.class.equals(authentication);
  }
}
