package com.gc.Ver;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.mail.internet.MimeMessage;
import java.io.File;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
@PropertySource("classpath:mail.properties")
public class MailTest {
    @Autowired
    private JavaMailSender javaMailSender;	//在spring中配置的邮件发送的bean

    @Value("${mail.smtp.username}")	//通过注解获取配置文件属性值
    String from;	//发件人邮箱
    String to = "2049769410@qq.com";	//收件人邮箱
    String subject = "ToolNet";	//邮件主题
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
            "    <img src=\"/status/images/Title.png\" class=\"logo\" title=\"工具网\" alt=\"工具网\" width=\"40px\" height=\"40px\"/>\n" +
            "    <h1>工具网邮箱验证</h1>\n" +
            "  </div>\n" +
            "  <div class=\"content\">\n" +
            "    <p>尊敬的用户，</p>\n" +
            "    <p>感谢您选择使用工具网！</p>\n" +
            "    <p>请使用以下验证码完成邮箱验证：</p>\n" +
            "    <div class=\"verification-code\">123456</div>\n" +
            "    <p class=\"instructions\">请在工具网页面输入此验证码以完成邮箱验证。</p>\n" +
            "    <p class=\"instructions\">如果您没有进行此操作，请忽略此邮件。</p>\n" +
            "  </div>\n" +
            "</div>\n" +
            "</body>\n" +
            "</html>";//邮件正文
//    File file = new File("C:/Users/gong'chao/Desktop/3.jpeg");	//发送一个文件

    @Test
    public void testSend() {
        MimeMessage message = javaMailSender.createMimeMessage();   //创建一个使用对象方法的新实例。MIME格式的电子邮件
        MimeMessageHelper messageHelper;	//处理MimeMessage的辅助类
        try {
            messageHelper = new MimeMessageHelper(message, true);   //第二个参数表示文本内容支持HTML格式
            messageHelper.setFrom(from);    //设置电子邮件的发件人地址
            messageHelper.setTo(to);    //设置电子邮件的收件人地址，可以逗号隔开发送多个
            messageHelper.setSubject(subject);//设置电子邮件的主题
            messageHelper.setText(text,true);	//true代表支持html格式

//            messageHelper.addAttachment(file.getName(), file);	//以附件形式发送一个文件

            javaMailSender.send(message);//使用对象的方法发送电子邮件
            System.out.println("success!");

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
