package com.ems1.classinfo.controller;

import com.ems1.classinfo.service.DisciplineService;
import com.ems1.po.Discipline;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/discipline/")
public class DisciplineController {
    @Resource(name = "disciplineServiceImpl")
    DisciplineService disciplineService;

    //list
    @RequestMapping("list.do")
    public String list(Discipline discipline, Model model) {

        List<Discipline> list = disciplineService.getDisciplineList(discipline);
        model.addAttribute("list", list);
        return "discipline_list";
    }

    @RequestMapping("add.do")
    public String add(Discipline discipline, Model model) {

        boolean mark = disciplineService.addDiscipline(discipline);
        if (mark) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return list(null, model);
    }

    //getdiscipline
    @RequestMapping("load.do")
    public String loadUpdate(Integer discId, Model model) {
        Discipline discipline = disciplineService.getDiscipline(discId);
        model.addAttribute("discipline", discipline);
        return "discipline_edit";
    }

    //    update discipline
    @RequestMapping("update.do")
    public String updatediscipline(Discipline discipline, Model model) {

        boolean mark = disciplineService.updateDiscipline(discipline);
        if (mark) {
            model.addAttribute("info", "edit success");
        } else {
            model.addAttribute("info", "edit fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String deletediscipline(Discipline discipline, Model model) {

        boolean mark = disciplineService.deleteDiscipline(discipline);
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
        }
        return this.list(null, model);
    }
}
