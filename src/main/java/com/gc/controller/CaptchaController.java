package com.gc.controller;

import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

/**
 * 生成验证码、验证
 */
@Controller
public class CaptchaController {
    @Autowired
    private Producer captchaProducer;
    @GetMapping("/captcha")
    public void getCaptcha(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // 生成验证码文本
        String captchaText = captchaProducer.createText();

        // 将验证码文本存储在 Session中
        HttpSession session = request.getSession();
        session.setAttribute("captcha", captchaText);

        // 生成验证码图片
        BufferedImage captchaImage = captchaProducer.createImage(captchaText);

        // 将验证码图片输出到响应
        ServletOutputStream outputStream = response.getOutputStream();
        //该方法将验证码图像以JPG格式写入输出流
        ImageIO.write(captchaImage, "jpg", outputStream);
        outputStream.flush();
        outputStream.close();
    }

    @RequestMapping("/verification")
    @ResponseBody
    public String verification(String verification,HttpSession session){
        String captcha = (String) session.getAttribute("captcha");
//        System.out.println(captcha+"_"+verification);
        if(!verification.equals(captcha)){
            return "false";
        }else{
            return "true";
        }
    }
}
