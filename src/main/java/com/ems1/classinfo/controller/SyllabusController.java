package com.ems1.classinfo.controller;

import com.ems1.classinfo.service.SyllabusService;
import com.ems1.po.SyllabusInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
@Controller
@RequestMapping("/syllabus/")
public class SyllabusController{
        @Resource(name = "syllabusServiceImpl")
        SyllabusService syllabusService;

        //list
        @RequestMapping("list.do")
        public String list(SyllabusInfo syllabus, Model model) {

            List<SyllabusInfo> list = syllabusService.getSyllabusList(syllabus);
            model.addAttribute("list", list);
            return "syllabus_list";
        }

        @RequestMapping("add.do")
        public String add(SyllabusInfo syllabus, Model model) {

            boolean mark = syllabusService.addSyllabus(syllabus);
            if (mark) {
                model.addAttribute("info", "success");
            } else {
                model.addAttribute("info", "fail");
            }
            return list(null, model);
        }

        //getSyllabus
        @RequestMapping("load.do")
        public String loadUpdate(Integer syllId, Model model) {
            SyllabusInfo syllabus = syllabusService.getSyllabus(syllId);
            model.addAttribute("syllabus", syllabus);
            return "syllabus_edit";
        }

        //    update Syllabus
        @RequestMapping("update.do")
        public String updateSyllabus(SyllabusInfo syllabus, Model model) {

            boolean mark = syllabusService.updateSyllabus(syllabus);
            if (mark) {
                model.addAttribute("info", "edit success");
            } else {
                model.addAttribute("info", "edit fail");
            }
            return this.list(null, model);
        }

        //delete
        @RequestMapping("delete.do")
        public String deleteSyllabus(SyllabusInfo syllabus, Model model) {

            boolean mark = syllabusService.deleteSyllabus(syllabus);
            if (mark) {
                model.addAttribute("info", "delete success");
            } else {
                model.addAttribute("info", "delete fail");
            }
            return this.list(null, model);
        }
}

