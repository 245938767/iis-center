package cn.iiss.mybatis.support;

import java.util.function.Supplier;

/**
 * @author xiao
 */
public interface Create<T> {

  UpdateHandler<T> create(Supplier<T> supplier);

}
