package cn.iiss.mybatis.support;

import java.util.function.Consumer;

/**
 * @author xiao
 */
public interface UpdateHandler<T>{

  Executor<T> update(Consumer<T> consumer);

}
