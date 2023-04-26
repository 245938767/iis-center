package cn.iiss.logistics.request;

import cn.iiss.commons.model.Request;
import lombok.Data;

@Data
public class LogisicsProductRequest implements Request {

    private Long productId;

    private Integer productNum;

}
