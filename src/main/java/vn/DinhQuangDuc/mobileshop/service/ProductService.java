package vn.DinhQuangDuc.mobileshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.DinhQuangDuc.mobileshop.domain.Cart;
import vn.DinhQuangDuc.mobileshop.domain.CartDetail;
import vn.DinhQuangDuc.mobileshop.domain.Product;
import vn.DinhQuangDuc.mobileshop.domain.User;
import vn.DinhQuangDuc.mobileshop.repository.CartDetailRepository;
import vn.DinhQuangDuc.mobileshop.repository.CartRepository;
import vn.DinhQuangDuc.mobileshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
    }

    public Product createProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> ferchProducts() {
        return this.productRepository.findAll();
    }

    public Product getProductByID(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public void handleAddProductToCart(String email, Long productID) {
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);
            if (cart == null) {
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(1);
                cart = this.cartRepository.save(otherCart);
            }
            Optional<Product> product = this.productRepository.findById(productID);
            if (product.isPresent()) {
                Product readlProduct = product.get();
                CartDetail cartDetail = new CartDetail();
                cartDetail.setCart(cart);
                cartDetail.setProduct(readlProduct);
                cartDetail.setPrice(readlProduct.getPrice());
                cartDetail.setQuantity(1);
                this.cartDetailRepository.save(cartDetail);
            }
        }
    }
}
