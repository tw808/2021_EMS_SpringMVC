package com.ems1.student.controller;

import com.ems1.po.StaffInfo;
import com.ems1.po.StuComInfo;
import com.ems1.po.StudentInfo;
import com.ems1.recruitment.service.StudentInfoService;
import com.ems1.student.service.CommunicationService;
import com.ems1.system.service.StaffInfoService;
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
@RequestMapping("/comm/")
public class CommunicationController {  
    @Resource(name = "communicationServiceImpl")
    CommunicationService communicationService;
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;
    @Resource(name = "staffInfoServiceImpl")
    StaffInfoService staffInfoService;
    //list
    @RequestMapping("list.do")
    public String list(StuComInfo Comm, Model model) {

        List<StuComInfo> list = communicationService.getCommList(Comm);
        model.addAttribute("list", list);
        return "stuCom_list";
    }

    @RequestMapping("add.do")
    public String add(StuComInfo comm, Model model) {

        boolean mark = communicationService.addComm(comm);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }


    //get
    @RequestMapping("load.do")
    public String loadUpdate(Integer comId, Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        staff.setStaffStatus("2");
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get student
        StudentInfo studentInfo = new StudentInfo();
        //-1 null, 0 unsorted, 1 sorted, 2 registered
        studentInfo.setStuMark("2");
        List<StudentInfo> stList = studentInfoService.getStuInfoList(studentInfo);
        model.addAttribute("stList", stList);
        //get info
        StuComInfo comm = communicationService.getComm(comId);
        model.addAttribute("comm", comm);
        return "stuCom_edit";
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
        return "stuCom_add";
    }




    //    update Comm
    @RequestMapping("update.do")
    public String updateComm(StuComInfo comm, Model model) {

        boolean mark = communicationService.updateComm(comm);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteComm(StuComInfo comm, Model model) {

        boolean mark = communicationService.deleteComm(comm);
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
