package cn.iiss.product.face.factory;

import cn.iiss.common.core.domain.R;
import cn.iiss.product.face.ProductService;
import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.product.face.model.GoodsVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProductFallbackFactory implements FallbackFactory<ProductService> {
    private static final Logger log = LoggerFactory.getLogger(ProductFallbackFactory.class);

    @Override
    public ProductService create(Throwable cause) {
        log.error("文件服务调用失败:{}", cause.getMessage());
        return new ProductService() {
            @Override
            public R<GoodsVo> getById(Long id) {
                return R.fail();
            }

            @Override
            public R<List<GoodsVo>> getList(ProductQueryRequest productQueryRequest) {
                return R.fail();
            }
        };
    }
}
