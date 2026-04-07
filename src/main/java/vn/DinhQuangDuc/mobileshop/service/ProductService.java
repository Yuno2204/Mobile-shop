package vn.DinhQuangDuc.mobileshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.DinhQuangDuc.mobileshop.domain.Product;
import vn.DinhQuangDuc.mobileshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> ferchProducts() {
        return this.productRepository.findAll();
    }
}
