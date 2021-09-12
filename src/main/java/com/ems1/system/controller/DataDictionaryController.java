package com.ems1.system.controller;

import com.ems1.po.DataDictionary;
import com.ems1.system.service.DataDictionaryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/dataDictionary")
public class DataDictionaryController {
    @Resource(name = "dataDictionaryServiceImpl")
    private DataDictionaryService dataDictionaryService;

    @RequestMapping("/list.do")
    public String list(DataDictionary dataDictionary, Model model) {
        List<DataDictionary> list = dataDictionaryService.getDataList(dataDictionary);
        model.addAttribute("list", list);
        return "dataDictionary_list";
    }

    @RequestMapping("/add.do")
    public String add(DataDictionary dataDictionary, Model model) {
        boolean m = dataDictionaryService.addData(dataDictionary);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }

    @RequestMapping("/load.do")
    public String load(Integer dataId, Model model) {
        DataDictionary dataDictionary=dataDictionaryService.getDataDictionary(dataId);
       model.addAttribute("dataDictionary", dataDictionary);
        return "dataDictionary_update";
    }

    @RequestMapping("/edit.do")
    public String edit(DataDictionary dataDictionary, Model model) {
        boolean m = dataDictionaryService.editData(dataDictionary);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }

    @RequestMapping("/delete.do")
    public String delete(Integer dataId, Model model) {
        boolean m=dataDictionaryService.deleteData(dataId);
        if (m) {
            model.addAttribute("info", "success");
        } else {
            model.addAttribute("info", "fail");
        }
        return this.list(null,model);
    }}
