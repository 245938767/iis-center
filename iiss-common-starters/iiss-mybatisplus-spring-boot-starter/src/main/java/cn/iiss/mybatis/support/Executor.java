package cn.iiss.mybatis.support;

import java.util.Optional;
import java.util.function.Consumer;

/**
 * @author xiao
 */
public interface Executor<T> {

  Optional<T> execute();

  Executor<T> successHook(Consumer<T> consumer);

  Executor<T> errorHook(Consumer<? super Throwable> consumer);

}
