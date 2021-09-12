package com.ems1.marketing.controller;

import com.ems1.marketing.service.TemplateService;
import com.ems1.po.Template;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/template/")
public class TemplateController {
    @Resource(name="templateServiceImpl")
    private TemplateService templateService;
    //list
    @RequestMapping("list.do")
    public String list(Template info, Model model){
        List<Template> list=templateService.getTemplateList(info);
        model.addAttribute("list",list);
        return"template_list";
    }
    @RequestMapping("/add.do")
    public String add(Template tinfo, Model model) {
        boolean m = templateService.addTemplate(tinfo);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }

    @RequestMapping("/load.do")
    public String load(Integer templateId, Model model) {
        Template tinfo=templateService.getTemplate(templateId);
        model.addAttribute("tinfo", tinfo);
        return "template_update";
    }

    @RequestMapping("/edit.do")
    public String edit(Template tinfo, Model model) {
        boolean m = templateService.updateTemplate(tinfo);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }

    @RequestMapping("/delete.do")
    public String delete(Integer templateId, Model model) {
        boolean m=templateService.deleteTemplate(templateId);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }}
