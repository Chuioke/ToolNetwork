package com.gc.controller;

import com.gc.bean.User;
import com.gc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用户登录、注册、验证
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(User user){
        userService.getUser(user);
        return "";
    }


}
