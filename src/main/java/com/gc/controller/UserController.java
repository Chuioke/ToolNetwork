package com.gc.controller;

import com.gc.bean.User;
import com.gc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 用户登录、注册、验证
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(User user, String verification, HttpSession session, Model model) {
        String captcha = (String) session.getAttribute("captcha");
        if (captcha == null || !captcha.equalsIgnoreCase(verification)) {
            model.addAttribute("message", "验证码不正确");
            return "login";
        }
        User dbUser = userService.getUser(user);
        if (dbUser != null) {
            session.setAttribute("currentUser", dbUser);
            return "redirect:/status/jsp/toollistHead.jsp";
        }
        model.addAttribute("message", "用户名或密码错误");
        return "login";
    }

    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    @PostMapping("/register")
    public String register(User user, String verification, Model model, HttpSession session) {
        String captcha = (String) session.getAttribute("captcha");
        if (captcha == null || !captcha.equalsIgnoreCase(verification)) {
            model.addAttribute("message", "验证码不正确");
            return "register";
        }
        if (userService.exists(user.getUserName())) {
            model.addAttribute("message", "用户名已存在，请更换后重试");
            return "register";
        }
        boolean success = userService.register(user);
        if (success) {
            return "redirect:/user/login";
        }
        model.addAttribute("message", "注册失败，请检查信息后重试");
        return "register";
    }
}
