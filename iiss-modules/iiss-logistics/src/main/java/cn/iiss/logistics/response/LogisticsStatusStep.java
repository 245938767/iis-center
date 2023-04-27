package cn.iiss.logistics.response;

import cn.iiss.commons.annotation.FieldDesc;
import cn.iiss.commons.model.Response;
import cn.iiss.logistics.LogisticsStatus;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.sf.jsqlparser.expression.DateTimeLiteralExpression;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LogisticsStatusStep implements Response {
    @ApiModelProperty("标题")
    private String title;
    @ApiModelProperty("时间")
    private Date dateTime;
    @ApiModelProperty("介绍小字")
    private String description;
    @ApiModelProperty("状态")
    private Integer status;
    private boolean current;
}
