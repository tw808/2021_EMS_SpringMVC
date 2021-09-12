package com.ems1.student.controller;

import com.ems1.po.StudentInfo;
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
@RequestMapping("/stuInfo/")
public class StudentController {
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;

    //list
    @RequestMapping("list.do")
    public String list(StudentInfo studentInfo, Model model) {
        if (studentInfo == null) {
            studentInfo = new StudentInfo();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        }
        studentInfo.setStuMark("2");

        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("list", list);
        return "stuFin_list";
    }

    //    update StudentInfo
    @RequestMapping("pay.do")
    public String studentPay(StudentInfo studentInfo, Model model,
                                 HttpServletRequest request) {
        HttpSession session=request.getSession();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuPaid("Y");
        boolean mark = studentInfoService.updateStudentInfo(studentInfo);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //    update StudentInfo
    @RequestMapping("notPay.do")
    public String studentNotPay(StudentInfo studentInfo, Model model,
                                 HttpServletRequest request) {
        HttpSession session=request.getSession();
        //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuPaid("N");
        boolean mark = studentInfoService.updateStudentInfo(studentInfo);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }
    //delete
    @RequestMapping("delete.do")
    public String deleteStudentInfo(StudentInfo studentInfo, Model model) {
        if (studentInfo == null) {
            studentInfo = new StudentInfo();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        }

        studentInfo.setStuMark("-1");
        boolean mark = studentInfoService.updateStudentInfo(studentInfo);
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
