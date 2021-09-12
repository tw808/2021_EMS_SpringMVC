package com.ems1.marketing.controller;

import com.ems1.marketing.service.ImService;
import com.ems1.marketing.service.TemplateService;
import com.ems1.po.ImInfo;
import com.ems1.po.StaffInfo;
import com.ems1.po.Template;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/im/")
public class ImController {

    @Resource(name = "imServiceImpl")
    private ImService imService;
    @Resource(name = "templateServiceImpl")
    private TemplateService templateService;

    //list
    @RequestMapping("list.do")
    public String list(ImInfo iinfo, Model model) {
        List<ImInfo> list = imService.getImList(iinfo);
        model.addAttribute("list", list);
        return "im_list";
    }


    @RequestMapping("show.do")
    public String show(Integer imId, Model model) {
        ImInfo iinfo = imService.getIm(imId);
        model.addAttribute("iinfo", iinfo);
        return "im_view";
    }

    @RequestMapping("load.do")
    public String load(Integer imId, Model model) {
        Template template=new Template();
        template.setTemplateEngine("Instant Message");
        List<Template> tList=templateService.getTemplateList(template);
        model.addAttribute("tList", tList);
        return "im_send";
    }

    @RequestMapping("send.do")
    public String send(ImInfo iinfo, Model model, HttpServletRequest request) {
        HttpSession session=request.getSession();
        //loginController
        StaffInfo staffInfo = (StaffInfo) session.getAttribute("staff");
        System.out.println("-----"+staffInfo.toString());
        if(staffInfo!=null){
            if(iinfo!=null){
                iinfo.setStaffId(staffInfo.getStaffId());
                iinfo.setImSender(staffInfo.getStaffCell());
                iinfo.setImSendTime(new Date());
            }
        }
        boolean m = imService.addIm(iinfo);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(iinfo, model);

    }

    @RequestMapping("delete.do")
    public String delete(Integer imId, Model model) {
        boolean m = imService.deleteIm(imId);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null, model);
    }
}

