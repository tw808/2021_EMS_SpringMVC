package com.ems1.marketing.controller;

import com.ems1.marketing.service.EmService;
import com.ems1.marketing.service.TemplateService;
import com.ems1.po.Email;
import com.ems1.po.StaffInfo;
import com.ems1.po.Template;
import com.sun.mail.util.MailSSLSocketFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Properties;

//import com.mysql.cj.xdevapi.Session;

@Controller
@RequestMapping("/em/")
public class EmController {


    @Resource(name = "emServiceImpl")
    private EmService emService;
    @Resource(name = "templateServiceImpl")
    private TemplateService templateService;

    //list
    @RequestMapping("list.do")
    public String list(Email einfo, Model model) {
        List<Email> list = emService.getEmList(einfo);
        model.addAttribute("list", list);
        return "email_list";
    }


    @RequestMapping("show.do")
    public String show(Integer emId, Model model) {
        Email einfo = emService.getEm(emId);
        model.addAttribute("einfo", einfo);
        return "email_view";
    }

    @RequestMapping("load.do")
    public String load(Integer emId, Model model) {
        Template template = new Template();
        template.setTemplateEngine("Email");
        List<Template> tList = templateService.getTemplateList(template);
        model.addAttribute("tList", tList);
        return "email_send";
    }

    @RequestMapping("send.do")
    public String send(Email einfo, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        //loginController
        StaffInfo staffInfo = (StaffInfo) session.getAttribute("staff");

        try {
            if (einfo != null && staffInfo.getStaffEmail() != null) {
                if (staffInfo != null) {
                    if (einfo != null) {
                        einfo.setStaffId(staffInfo.getStaffId());
                        einfo.setEmSendTime(new Date());
                    }
                }
                String sender = staffInfo.getStaffName();
                String title = einfo.getEmTitle();
                String server163 = "smtp.163.com";
                Properties properties = new Properties();
                MailSSLSocketFactory sf = new MailSSLSocketFactory();
                sf.setTrustAllHosts(true);
                properties.put("mail.smtp.ssl.enable", "true");
                properties.put("mail.smtp.ssl.socketFactory", sf);
                //smtp server
                properties.put("mail.smtp.host", server163);
                //authentication
                properties.put("mail.smtp.auth", "true");
                Session mailSession = Session.getInstance(properties);
                //display debug
                mailSession.setDebug(true);
                //set attributes
                Message message = new MimeMessage(mailSession);
                //message.setFrom(new InternetAddress(staffInfo.getStaffEmail());
                message.setFrom(new InternetAddress("dummy12345@163.com"));
                message.setRecipient(Message.RecipientType.TO,
                        //new InternetAddress("einfo.getEmReceiverEm()));
                        new InternetAddress("dummy12345@163.com"));
                message.setSubject(title);
                message.setText(einfo.getEmMsg());
                message.saveChanges();
                //163 email input
                String user = "dummy12345";
                //
                String password = "IZVDKBRHGAAAVVGD";
                //send email input
                Transport transport = mailSession.getTransport("smtp");
                transport.connect(server163, user, password);
                transport.sendMessage(message, message.getAllRecipients());
                transport.close();
                boolean m = emService.addEm(einfo);
                if (m) {
                    model.addAttribute("info", "success");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("info", "fail");
        }
        return this.list(null, model);
    }

    @RequestMapping("delete.do")
    public String delete(Integer emId, Model model) {
        boolean m = emService.deleteEm(emId);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null, model);
    }
}
