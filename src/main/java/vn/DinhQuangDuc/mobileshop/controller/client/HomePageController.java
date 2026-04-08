package vn.DinhQuangDuc.mobileshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import vn.DinhQuangDuc.mobileshop.domain.Product;
import vn.DinhQuangDuc.mobileshop.service.ProductService;

@Controller
public class HomePageController {
    private final ProductService productService;

    public HomePageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String getMethodName(Model model) {
        List<Product> products = this.productService.ferchProducts();
        model.addAttribute("products", products);
        return "client/homepage/show";
    }

}
