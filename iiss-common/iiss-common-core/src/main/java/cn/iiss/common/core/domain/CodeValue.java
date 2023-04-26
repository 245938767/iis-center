package cn.iiss.common.core.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CodeValue implements Serializable {
    /**
     * key 键
     */
    private String k;
    /**
     * value 值
     */
    private String v;
    /**
     * label 标签
     */
    private String l;

}
