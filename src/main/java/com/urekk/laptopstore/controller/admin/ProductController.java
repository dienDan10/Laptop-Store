package com.urekk.laptopstore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {

    @GetMapping("/admin/products")
    public String adminProduct() {
        return "admin/product/show-product";
    }

}
