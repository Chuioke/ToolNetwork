package com.gc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.concurrent.ThreadLocalRandom;

/**
 * 发送邮件、验证
 */
@Controller
public class VerCodeController {
    @Autowired
    private JavaMailSender javaMailSender;
    @Value("${mail.smtp.username}")
    String form;

    @RequestMapping("/verCon")
    @ResponseBody
    public String verCon(String email, HttpServletRequest request){
        HttpSession session = request.getSession();
        //生成随机6位数
        int randomNumber = ThreadLocalRandom.current().nextInt(100000, 1000000);
        session.setAttribute("emNum",randomNumber);
//        System.out.println("发送邮箱中..."+email);
        ServletContext servletContext = request.getServletContext();
        String imagePath = servletContext.getRealPath("/status/images/Title.png");
        String imageCid = "image";
        String text = "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "  <meta charset=\"UTF-8\">\n" +
                "  <title>工具网邮箱验证</title>\n" +
                "  <style>\n" +
                "    body {\n" +
                "      font-family: Arial, sans-serif;\n" +
                "      background-color: #171a21;\n" +
                "      color: #ffffff;\n" +
                "    }\n" +
                "\n" +
                "    .container {\n" +
                "      max-width: 600px;\n" +
                "      margin: 0 auto;\n" +
                "      padding: 20px;\n" +
                "      background-color: #2e3542;\n" +
                "    }\n" +
                "\n" +
                "    .header {\n" +
                "      text-align: center;\n" +
                "      margin-bottom: 20px;\n" +
                "    }\n" +
                "\n" +
                "    .header h1 {\n" +
                "      color: #ffffff;\n" +
                "      font-size: 24px;\n" +
                "    }\n" +
                "\n" +
                "    .content {\n" +
                "      padding: 20px;\n" +
                "      background-color: #394561;\n" +
                "      border-radius: 5px;\n" +
                "    }\n" +
                "\n" +
                "    .content p {\n" +
                "      margin: 0 0 20px 0;\n" +
                "    }\n" +
                "\n" +
                "    .verification-code {\n" +
                "      color: #ffffff;\n" +
                "      font-size: 24px;\n" +
                "      font-weight: bold;\n" +
                "      padding: 10px;\n" +
                "      background-color: #0a77e8;\n" +
                "      border-radius: 5px;\n" +
                "      text-align: center;\n" +
                "    }\n" +
                "\n" +
                "    .instructions {\n" +
                "      font-size: 16px;\n" +
                "      margin-top: 20px;\n" +
                "    }\n" +
                "  </style>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div class=\"container\">\n" +
                "  <div class=\"header\">\n" +
                "    <img src=\"cid:image\" class=\"logo\" title=\"工具网\" alt=\"工具网\" width=\"40px\" height=\"40px\"/>\n" +
                "    <h1>工具网邮箱验证</h1>\n" +
                "  </div>\n" +
                "  <div class=\"content\">\n" +
                "    <p>尊敬的用户，</p>\n" +
                "    <p>感谢您选择使用工具网！</p>\n" +
                "    <p>请使用以下验证码完成邮箱验证：</p>\n" +
                "    <div class=\"verification-code\">"+randomNumber+"</div>\n" +
                "    <p class=\"instructions\">请在工具网页面输入此验证码以完成邮箱验证。</p>\n" +
                "    <p class=\"instructions\">如果您没有进行此操作，请忽略此邮件。</p>\n" +
                "  </div>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>";

        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper messageHelper;
        try {
            messageHelper = new MimeMessageHelper(message, true);
            messageHelper.setFrom(form);
            messageHelper.setTo(email);
            messageHelper.setSubject("ToolNet");
            messageHelper.setText(text,true);
            messageHelper.addInline(imageCid, new File(imagePath));
            javaMailSender.send(message);
//            System.out.println("success!");
            return "success";
        }catch (Exception e) {
            e.printStackTrace();
            return "false";
        }
    }

    @RequestMapping("/GetVercon")
    @ResponseBody
    public String GetVercon(Integer email,HttpSession session){
        System.out.println(email);
        int emNum = (int) session.getAttribute("emNum");
        if(email!=emNum){
            return "false";
        }else{
            return "true";
        }
    }

    @RequestMapping("/welcome")
    @ResponseBody
    public String welcome(String email,HttpServletRequest request){
        ServletContext servletContext = request.getServletContext();
        String imagePath = servletContext.getRealPath("/status/images/Title.png");
        String imageCid = "image";
        String text = "<!DOCTYPE html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <title>感谢注册工具网</title>\n" +
                "    <style>\n" +
                "        body {\n" +
                "            font-family: Arial, sans-serif;\n" +
                "            background-color: #171a21;\n" +
                "            color: #ffffff;\n" +
                "        }\n" +
                "\n" +
                "        .container {\n" +
                "            max-width: 600px;\n" +
                "            margin: 0 auto;\n" +
                "            padding: 20px;\n" +
                "            background-color: #2e3542;\n" +
                "        }\n" +
                "\n" +
                "        .header {\n" +
                "            text-align: center;\n" +
                "            margin-bottom: 20px;\n" +
                "        }\n" +
                "\n" +
                "        .header h1 {\n" +
                "            color: #ffffff;\n" +
                "            font-size: 24px;\n" +
                "        }\n" +
                "\n" +
                "        .content {\n" +
                "            padding: 20px;\n" +
                "            background-color: #394561;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "\n" +
                "        .content p {\n" +
                "            margin: 0 0 20px 0;\n" +
                "        }\n" +
                "\n" +
                "        .instructions {\n" +
                "            font-size: 16px;\n" +
                "            margin-top: 20px;\n" +
                "        }\n" +
                "    </style>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div class=\"container\">\n" +
                "    <div class=\"header\">\n" +
                "        <img src=\"cid:image\" alt=\"工具网\" width=\"40px\" height=\"40px\">\n" +
                "        <h1>感谢注册工具网</h1>\n" +
                "    </div>\n" +
                "    <div class=\"content\">\n" +
                "        <p>尊敬的用户，</p>\n" +
                "        <p>感谢您选择注册工具网！</p>\n" +
                "        <p>欢迎加入我们的大家庭。</p>\n" +
                "        <p class=\"instructions\">如果您有任何问题或需要帮助，请随时与我们联系。</p>\n" +
                "        <p class=\"instructions\">祝您使用愉快！</p>\n" +
                "    </div>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>\n";
        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper messageHelper;
        try {
            messageHelper = new MimeMessageHelper(message, true);
            messageHelper.setFrom(form);
            messageHelper.setTo(email);
            messageHelper.setSubject("ToolNet");
            messageHelper.setText(text,true);
            messageHelper.addInline(imageCid, new File(imagePath));
            javaMailSender.send(message);
//            System.out.println("success!");
            return "success";
        }catch (Exception e) {
            e.printStackTrace();
            return "false";
        }
    }
}

