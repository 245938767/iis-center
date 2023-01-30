package cn.iiss.mybatis.support;

import cn.iiss.common.exception.ValidationException;
import cn.iiss.common.model.ValidateResult;
import cn.iiss.common.validator.ValidateGroup;

import static org.springframework.util.CollectionUtils.isEmpty;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.groups.Default;

/**
 * @author xiao
 */
public abstract class BaseEntityOperation implements EntityOperation{

  static final Validator validator = Validation.buildDefaultValidatorFactory().getValidator();

  public <T> void doValidate(T t, Class<? extends ValidateGroup> group) {
    Set<ConstraintViolation<T>> constraintViolations = validator.validate(t, group, Default.class);
    if (!isEmpty(constraintViolations)) {
      List<ValidateResult> results = constraintViolations.stream()
          .map(cv -> new ValidateResult(cv.getPropertyPath().toString(), cv.getMessage()))
          .collect(Collectors.toList());
      throw new ValidationException(results);
    }
  }
}
