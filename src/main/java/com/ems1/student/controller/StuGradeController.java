package com.ems1.student.controller;

import com.ems1.po.StaffInfo;
import com.ems1.po.StuGrade;
import com.ems1.po.StudentInfo;
import com.ems1.recruitment.service.StudentInfoService;
import com.ems1.student.service.StuGradeService;
import com.ems1.system.service.StaffInfoService;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Controller
@RequestMapping("/grade/")
public class StuGradeController {
    @Resource(name = "stuGradeServiceImpl")
    StuGradeService stuGradeService;
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;
    @Resource(name = "staffInfoServiceImpl")
    StaffInfoService staffInfoService;
    //list
    @RequestMapping("list.do")
    public String list(StuGrade grade, Model model) {

        List<StuGrade> list = stuGradeService.getGradeList(grade);
        model.addAttribute("list", list);

        return "stuGrade_list";
    }

    @RequestMapping("add.do")
    public String add(StuGrade grade, Model model, HttpServletRequest request) {

        boolean mark = stuGradeService.addGrade(grade);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getGrade
    @RequestMapping("load.do")
    public String loadUpdate(Integer stuGradeId, Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        staff.setStaffStatus("2");
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get student
        StudentInfo studentInfo = new StudentInfo();
        //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuMark("2");
        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("stList", list);
        StuGrade grade = stuGradeService.getGrade(stuGradeId);
        model.addAttribute("grade", grade);
        return "stuGrade_edit";
    }


    //get
    @RequestMapping("loadAdd.do")
    public String loadAdd( Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        staff.setStaffStatus("2");
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get student
        StudentInfo studentInfo = new StudentInfo();
        //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuMark("2");
        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("stList", list);
        return "stuGrade_add";
    }


    //    update Grade
    @RequestMapping("update.do")
    public String updateGrade(StuGrade grade, Model model, HttpServletRequest request) {

        boolean mark = stuGradeService.updateGrade(grade);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteGrade(StuGrade grade, Model model, HttpServletRequest request) {

        boolean mark = stuGradeService.deleteGrade(grade);
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
