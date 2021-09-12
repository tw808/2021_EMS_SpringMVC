package com.ems1.recruitment.controller;

import com.ems1.po.AuditionInfo;
import com.ems1.po.StaffInfo;
import com.ems1.po.StudentInfo;
import com.ems1.recruitment.service.AuditionService;
import com.ems1.recruitment.service.StudentInfoService;
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
@RequestMapping("/audition/")
public class AuditionController {

    @Resource(name = "auditionServiceImpl")
    private AuditionService auditionService;
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;



    //list
    @RequestMapping("list.do")
    public  String list(AuditionInfo auditionInfo, Model model){
        List<AuditionInfo> list=auditionService.getAuditionList(auditionInfo);
        model.addAttribute("list",list);
        return "audition_list";
    }
    //add load
    @RequestMapping("loadAdd.do")
    public String loadAdd(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        StaffInfo staff = (StaffInfo) session.getAttribute("staff");

        StudentInfo studentInfo = new StudentInfo();
        //-1 null, 0 unsorted, 1 sorted, 2 registered

        if (staff != null) {
            studentInfo.setStaffId(staff.getStaffId());
        }
        studentInfo.setStuMark("1");

        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("list", list);
        return "audition_add";

    }

    //add
    @RequestMapping("add.do")
    public String add(AuditionInfo info, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
//        StaffInfo staff = (StaffInfo) session.getAttribute("staff");
        boolean m=auditionService.addAudition(info);
        if (m) {
            model.addAttribute("info","success");
        } else {
            model.addAttribute("info","fail");
        }
        return this.list(null, model);
    }

    //update load

    @RequestMapping("load.do")
    public String loadUpdate(Integer audId, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        StaffInfo staff = (StaffInfo) session.getAttribute("staff");

        StudentInfo studentInfo = new StudentInfo();

        if (staff != null) {
            studentInfo.setStaffId(staff.getStaffId());
        }
        //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuMark("1");


        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("list", list);

        AuditionInfo AuditionInfo =auditionService.getAudition(audId);
        model.addAttribute("audInfo", AuditionInfo);

        return "audition_update";
    }

    //update
    @RequestMapping("update.do")
    public String update(AuditionInfo info, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        StaffInfo staff = (StaffInfo) session.getAttribute("staff");
        boolean m=auditionService.updateAudtion(info);
        if (m) {
            model.addAttribute("info","success");
        } else {
            model.addAttribute("info","fail");
        }
        return this.list(null, model);
    }

    //update
    @RequestMapping("delete.do")
    public String delete(AuditionInfo info, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        StaffInfo staff = (StaffInfo) session.getAttribute("staff");
        boolean m=auditionService.deleteAudition(info);
        if (m) {
            model.addAttribute("info","success");
        } else {
            model.addAttribute("info","fail");
        }
        return this.list(null, model);
    }

    //    time init
    @InitBinder
    public void initBinder(ServletRequestDataBinder bin) {
        bin.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

    }
}