package com.ems1.classinfo.controller;

import com.ems1.classinfo.service.ClassInfoService;
import com.ems1.classinfo.service.ClassroomService;
import com.ems1.classinfo.service.DisciplineService;
import com.ems1.classinfo.service.SyllabusService;
import com.ems1.po.*;
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
@RequestMapping("/classInfo/")
public class ClassInfoController {
    @Resource(name = "classInfoServiceImpl")
    ClassInfoService classInfoService;
    @Resource(name = "staffInfoServiceImpl")
    StaffInfoService staffInfoService;
    @Resource(name = "disciplineServiceImpl")
    DisciplineService disciplineService;
    @Resource(name = "syllabusServiceImpl")
    SyllabusService syllabusService;
    @Resource(name = "classroomServiceImpl")
    ClassroomService classroomService;

    //list
    @RequestMapping("list.do")
    public String list(ClassInfo classInfo, Model model) {
        if(classInfo==null){
            classInfo=new ClassInfo();
        }
        classInfo.setClassStatus("1");
        List<Class> list = classInfoService.getClassList(classInfo);
        model.addAttribute("list", list);
        return "class_list";
    }

    @RequestMapping("add.do")
    public String add(ClassInfo classInfo, Model model) {
        classInfo.setClassStatus("1");

        boolean mark = classInfoService.addClass(classInfo);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getClass
    @RequestMapping("loadAdd.do")
    public String loadAdd( Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        staff.setStaffStatus("2");
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get discipline
        List<Discipline> dList = disciplineService.getDisciplineList(null);
        model.addAttribute("dList", dList);
        //get syllabus
        List<SyllabusInfo> syList = syllabusService.getSyllabusList(null);
        model.addAttribute("syList", syList);
        //get classroom
        List<ClassroomInform> cList = classroomService.getClassroomList(null);
        model.addAttribute("cList", cList);
        return "class_add";
    }

    //getClass
    @RequestMapping("load.do")
    public String loadUpdate(Integer classId, Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        staff.setStaffStatus("2");
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get discipline
        List<Discipline> dList = disciplineService.getDisciplineList(null);
        model.addAttribute("dList", dList);
        //get syllabus
        List<SyllabusInfo> syList = syllabusService.getSyllabusList(null);
        model.addAttribute("syList", syList);
        //get classroom
        List<ClassroomInform> cList = classroomService.getClassroomList(null);
        model.addAttribute("cList", cList);
        //get class info
        ClassInfo classInfo = classInfoService.getClass(classId);
        model.addAttribute("classInfo", classInfo);
        return "class_edit";
    }

    //    update Class
    @RequestMapping("update.do")
    public String updateClass(ClassInfo classInfo, Model model) {

        boolean mark = classInfoService.updateClass(classInfo);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteClass(ClassInfo classInfo, Model model) {

        boolean mark = classInfoService.deleteClass(classInfo);
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
