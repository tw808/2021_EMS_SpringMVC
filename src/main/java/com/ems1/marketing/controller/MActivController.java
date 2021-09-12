package com.ems1.marketing.controller;

import com.ems1.marketing.service.MActivService;
import com.ems1.po.MarketingActivities;
import com.ems1.po.StaffInfo;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/mActiv/")
public class MActivController {
    @Resource(name = "MActivServiceImpl")
    private MActivService mActivService;

    //list
    @RequestMapping("list.do")
    public String list(MarketingActivities minfo, Model model) {
        List<MarketingActivities> list = mActivService.getMActivList(minfo);
        model.addAttribute("mList", list);
        return "mActiv_list";
    }

    @RequestMapping("add.do")
    public String add(MarketingActivities minfo, Model model,
                      HttpServletRequest request) {
        HttpSession session = request.getSession();
        //loginController
        StaffInfo staffInfo = (StaffInfo) session.getAttribute("staff");
        if (staffInfo != null) {
            if (minfo != null) {
                minfo.setStaffId(staffInfo.getStaffId());
            }
        }
        boolean m = mActivService.addMActiv(minfo);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null, model);
    }

    @RequestMapping("load.do")
    public String load(Integer actId, Model model) {
        MarketingActivities minfo = mActivService.getMActiv(actId);
        model.addAttribute("minfo", minfo);
        return "mActiv_update";
    }


    @RequestMapping("/edit.do")
    public String edit(MarketingActivities minfo, Model model)
    {
        boolean m = mActivService.updateMActiv(minfo);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return "mActiv_list";
    }

    @RequestMapping("/delete.do")
    public String delete(Integer actId, Model model) {
        boolean m = mActivService.deleteMActiv(actId);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return "mActiv_list";
    }

    //    time init
    @InitBinder
    public void initBinder(ServletRequestDataBinder bin) {
        bin.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

    }
}
