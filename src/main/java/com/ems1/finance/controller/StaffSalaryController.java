package com.ems1.finance.controller;

import com.ems1.finance.service.StaffSalaryService;
import com.ems1.po.StaffInfo;
import com.ems1.po.StaffSalary;
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
@RequestMapping("/salary/")
public class StaffSalaryController {
    @Resource(name = "staffSalaryServiceImpl")
    StaffSalaryService staffSalaryService;
    @Resource(name = "staffInfoServiceImpl")
    StaffInfoService staffInfoService;
    //list
    @RequestMapping("list.do")
    public String list(StaffSalary salary, Model model) {

        List<StaffSalary> list = staffSalaryService.getSalaryList(salary);
        model.addAttribute("list", list);
        return "staffSalary_list";
    }

    @RequestMapping("add.do")
    public String add(StaffSalary salary, Model model) {

        boolean mark = staffSalaryService.addSalary(salary);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getSalary
    @RequestMapping("load.do")
    public String loadUpdate(Integer staffSalId, Model model) {
        //get staff
        StaffInfo staff = new StaffInfo();
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get student
        StaffSalary salary = staffSalaryService.getSalary(staffSalId);
        System.out.println("XXXXX"+salary);
        model.addAttribute("salary", salary);
        return "staffSalary_edit";
    }

    //getGrade
    @RequestMapping("loadAdd.do")
    public String loadeAdd(Model model) {

        //get staff
        StaffInfo staff = new StaffInfo();
        List<StaffInfo> sList = staffInfoService.getList(staff);
        model.addAttribute("sList", sList);
        //get student

        return "staffSalary_add";
    }

    //    update Salary
    @RequestMapping("update.do")
    public String updateSalary(StaffSalary salary, Model model) {

        boolean mark = staffSalaryService.updateSalary(salary);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deleteSalary(StaffSalary salary, Model model) {

        boolean mark = staffSalaryService.deleteSalary(salary);
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
