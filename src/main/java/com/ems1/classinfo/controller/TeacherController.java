package com.ems1.classinfo.controller;

import com.ems1.classinfo.service.TeacherService;
import com.ems1.po.StaffInfo;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Controller
@RequestMapping("/teacher/")
public class TeacherController {
    @Resource(name = "teacherServiceImpl")
    private TeacherService teacherService;
    //    add staffinfo
    @RequestMapping("add.do")
    public String addStaffInfo(StaffInfo staff, Model model) {
        boolean mark = teacherService.addStaff(staff);
        if (mark) {
            model.addAttribute("info", "add success");
        } else {
            model.addAttribute("info", "add fail");
        }
        return this.list(null, model);
    }
    //list
    @RequestMapping("list.do")
    public String list(StaffInfo staff, Model model) {
        List<StaffInfo> list = teacherService.getTeacherList(staff);
        model.addAttribute("list", list);
        return "teacher_list";
    }
    //getStaffInfo
    @RequestMapping("show.do")
    public String show(Integer staffId, Model model){
        StaffInfo staffInfo=teacherService.getStaffInfo(staffId);
        model.addAttribute("staffInfo",staffInfo);
        return "teacher_show";
    }
    //getStaffInfo
    @RequestMapping("load.do")
    public String loadUpdate(Integer staffId, Model model){
        StaffInfo staffInfo=teacherService.getStaffInfo(staffId);
        model.addAttribute("staffInfo",staffInfo);
        return "teacher_edit";
    }
    //    update staffinfo
    @RequestMapping("update.do")
    public String updateStaffInfo(StaffInfo staff, Model model) {

        boolean mark = teacherService.updateStaff(staff);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }
    @RequestMapping("delete.do")
    public String deleteStaffInfo(StaffInfo staff, Model model) {
        //set info to 0

        boolean mark = teacherService.deleteStaff(staff);
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
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
