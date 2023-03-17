package cn.iiss.product.face;

import cn.iiss.common.core.constant.ServiceNameConstants;
import cn.iiss.common.core.domain.R;
import cn.iiss.product.face.domain.ProductQueryRequest;
import cn.iiss.product.face.factory.ProductFallbackFactory;
import cn.iiss.product.face.model.Product;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(contextId = "productService", value = ServiceNameConstants.PRODUCT_SERVICE, fallbackFactory = ProductFallbackFactory.class)
public interface ProductService {

    @GetMapping(value = "/product/v1/{id}")
    public R<Product> getById(@PathVariable("id") Long id);

    @GetMapping(value = "/product/v1/list")
    public R<List<Product>> getList(ProductQueryRequest productQueryRequest);
}
