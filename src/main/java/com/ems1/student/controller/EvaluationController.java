package com.ems1.student.controller;

import com.ems1.po.EvaluationInfo;
import com.ems1.po.StaffInfo;
import com.ems1.po.StudentInfo;
import com.ems1.recruitment.service.StudentInfoService;
import com.ems1.student.service.EvaluationService;
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
@RequestMapping("/eval/")
public class EvaluationController {
    @Resource(name = "evaluationServiceImpl")
    EvaluationService evaluationService;
    @Resource(name = "studentInfoServiceImpl")
    private StudentInfoService studentInfoService;
    @Resource(name = "staffInfoServiceImpl")
    StaffInfoService staffInfoService;
    //list
    @RequestMapping("list.do")
    public String list(EvaluationInfo evaluation, Model model) {

        List<EvaluationInfo> list = evaluationService.getEvaluationList(evaluation);
        model.addAttribute("list", list);
        return "stuEval_list";
    }

    @RequestMapping("add.do")
    public String add(EvaluationInfo evaluation, Model model) {

        boolean mark = evaluationService.addEvaluation(evaluation);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getevaluation
    @RequestMapping("load.do")
    public String loadUpdate(Integer evalId, Model model) {
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
        EvaluationInfo evaluation = evaluationService.getEvaluation(evalId);
        model.addAttribute("evaluation", evaluation);
        return "stuEval_edit";
    }

    //getevaluation
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
        return "stuEval_add";
    }

    //    update evaluation
    @RequestMapping("update.do")
    public String updateevaluation(EvaluationInfo evaluation, Model model) {

        boolean mark = evaluationService.updateEvaluation(evaluation);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteevaluation(EvaluationInfo evaluation, Model model) {

        boolean mark = evaluationService.deleteEvaluation(evaluation);
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
