package com.melluli.challenge.springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.melluli.challenge.springapp.service.UserService;

@Controller
public class UserController {

    private UserService userService;

    @RequestMapping(value = "/users")
    public String load(Model model) {
        model.addAttribute("users", getUserService().fetchUsers());
        return "users.jsp";
    }

    public UserService getUserService() {
        return userService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
