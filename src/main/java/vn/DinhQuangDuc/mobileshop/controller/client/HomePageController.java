package vn.DinhQuangDuc.mobileshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomePageController {
    @GetMapping("/")
    public String getMethodName() {
        return "client/homepage/show";
    }

}
