package com.ems1.recruitment.controller;

import com.ems1.po.StaffInfo;
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
@RequestMapping("/stuPool/")
public class StudentPoolController {
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;

    //list
    @RequestMapping("list.do")
    public String list(StudentInfo studentInfo, Model model) {
        if (studentInfo == null) {
            studentInfo = new StudentInfo();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        }
        studentInfo.setStuMark("0");

        List<StudentInfo> list = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("list", list);
        return "stuPoolList";
    }

    @RequestMapping("add.do")
    public String add(StudentInfo studentInfo, Model model) {
        if (studentInfo == null) {
            studentInfo = new StudentInfo();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        }
        studentInfo.setStuMark("0");

        boolean mark = studentInfoService.addStudent(studentInfo);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }
    //getStudentInfo
    @RequestMapping("show.do")
    public String show(Integer stuId, Model model){
        StudentInfo studentInfo=studentInfoService.getStudentInfo(stuId);
        model.addAttribute("studentInfo",studentInfo);
        return "stuPoolShow";
    }
    //getStudentInfo
    @RequestMapping("load.do")
    public String loadUpdate(Integer stuId, Model model){
        StudentInfo studentInfo=studentInfoService.getStudentInfo(stuId);
        model.addAttribute("studentInfo",studentInfo);
        return "stuPoolEdit";
    }
    //    update StudentInfo
    @RequestMapping("update.do")
    public String updateStudentInfo(StudentInfo studentInfo, Model model) {

        boolean mark = studentInfoService.updateStudentInfo(studentInfo);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //    update StudentInfo
    @RequestMapping("get.do")
    public String getStudentInfo(StudentInfo studentInfo, Model model,
                                 HttpServletRequest request) {
        HttpSession session=request.getSession();
        StaffInfo staff=(StaffInfo) session.getAttribute("staff");

        if (studentInfo == null) {
            studentInfo = new StudentInfo();
            //-1 null, 0 unsorted, 1 sorted, 2 registered
        }
        if(staff!=null){
            studentInfo.setStaffId(staff.getStaffId());
        }
        studentInfo.setStuMark("1");
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
