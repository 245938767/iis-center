package cn.iiss.mybatis.support;

import java.io.Serializable;
import java.util.function.Supplier;

/**
 * @author xiao
 */
public interface Loader<T> {

  UpdateHandler<T> loadById(Serializable id);

  UpdateHandler<T> load(Supplier<T> t);

}
