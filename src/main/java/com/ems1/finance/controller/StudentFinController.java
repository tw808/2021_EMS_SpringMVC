package com.ems1.finance.controller;

import com.ems1.finance.service.StudentFinService;
import com.ems1.po.*;
import com.ems1.recruitment.service.StudentInfoService;
import com.ems1.system.service.StaffInfoService;
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
@RequestMapping("/stuPay/")
public class StudentFinController {

    @Resource(name = "studentFinServiceImpl")
    private StudentFinService studentFinService;
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;
    @Resource(name = "staffInfoServiceImpl")
    private StaffInfoService staffInfoService;


    //getStudentInfo
    @RequestMapping("show.do")
    public String show(Integer stuId, Model model) {
        StudentInfo studentInfo = studentInfoService.getStudentInfo(stuId);
        model.addAttribute("studentInfo", studentInfo);
        //get info
        StudentFin studentFin= new StudentFin();
        studentFin.setStuId(stuId);
       List<StudentFin> stuFinList = studentFinService.getStuFinList(studentFin);
        model.addAttribute("stuFinList", stuFinList);
        return "stuFin_show";
    }


    //getevaluation
    @RequestMapping("loadAdd.do")
    public String loadUpdate(Integer stuId, Model model , HttpServletRequest request) {
        HttpSession session=request.getSession();
        StaffInfo staff=(StaffInfo) session.getAttribute("staff");
        model.addAttribute("staff", staff);
        //get student
        StudentInfo studentInfo = studentInfoService.getStudentInfo(stuId);
        model.addAttribute("studentInfo", studentInfo);

        return "stuFin_add";
    }


    //    update Syllabus
    @RequestMapping("add.do")
    public String updateStuFin(StudentFin stuFin , Model model) {

        boolean mark = studentFinService.addStuFin(stuFin);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return  this.show(stuFin.getStuId(), model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteStuFin(StudentFin stuFin, Model model){
        StudentFin stuFinSub=studentFinService.getstuFin(stuFin);

        boolean mark = studentFinService.deleteStuFin(stuFin);
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
        }

        return  this.show(stuFinSub.getStuId(), model);
    }

    //    time init
    @InitBinder
    public void initBinder(ServletRequestDataBinder bin) {
        bin.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

    }
}
