package com.urekk.laptopstore.controller.admin;

import com.urekk.laptopstore.domain.User;
import com.urekk.laptopstore.service.RoleService;
import com.urekk.laptopstore.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    private UserService userService;
    private RoleService roleService;

    public UserController(UserService userService, RoleService roleService) {
        this.userService = userService;
        this.roleService = roleService;
    }

    @GetMapping("/admin/user/create")
    public String showCreateUserForm(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("roles", roleService.findAll());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUser(@ModelAttribute("newUser") User user) {
        userService.save(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user")
    public String showUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "admin/user/show-user";
    }

    @GetMapping("/admin/user/{id}")
    public String showUserDetail(Model model, @PathVariable long id) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "admin/user/user-detail";
    }

    @GetMapping("/admin/user/update/{id}")
    public String showUpdateUserForm(Model model, @PathVariable long id) {
        model.addAttribute("user", userService.findById(id));
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update/{id}")
    public String updateUser(@ModelAttribute("user") User user, @PathVariable long id) {
        userService.save(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String deleteUser(@PathVariable long id) {
        userService.deleteById(id);
        return "redirect:/admin/user";
    }

}
