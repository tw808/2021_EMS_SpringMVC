package com.ems1.classinfo.controller;

import com.ems1.classinfo.service.ClassroomService;
import com.ems1.po.ClassroomInform;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/classroom/")
public class ClassroomController {
    @Resource(name = "classroomServiceImpl")
    ClassroomService classroomService;

    //list
    @RequestMapping("list.do")
    public String list(ClassroomInform classroom, Model model) {

        List<ClassroomInform> list = classroomService.getClassroomList(classroom);
        model.addAttribute("list", list);
        return "classroom_list";
    }

    @RequestMapping("add.do")
    public String add(ClassroomInform classroom, Model model) {

        boolean mark = classroomService.addClassroom(classroom);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getclassroom
    @RequestMapping("load.do")
    public String loadUpdate(Integer classroomId, Model model) {
        ClassroomInform classroom = classroomService.getClassroom(classroomId);
        model.addAttribute("classroom", classroom);
        return "classroom_edit";
    }

    //    update classroom
    @RequestMapping("update.do")
    public String updateclassroom(ClassroomInform classroom, Model model) {

        boolean mark = classroomService.updateClassroom(classroom);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteclassroom(ClassroomInform classroom, Model model) {

        boolean mark = classroomService.deleteClassroom(classroom);
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
        }
        return this.list(null, model);
    }
}
