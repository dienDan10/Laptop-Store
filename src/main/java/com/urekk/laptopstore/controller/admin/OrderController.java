package com.urekk.laptopstore.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {

    @GetMapping("/admin/orders")
    public String adminOrder() {
        return "admin/order/show-order";
    }
}
