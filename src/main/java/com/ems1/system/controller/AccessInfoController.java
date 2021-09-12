package com.ems1.system.controller;

import com.ems1.po.AccessInfo;
import com.ems1.system.service.AccessService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/access/")
public class AccessInfoController {
    //accessService
    @Resource(name = "accessServiceImpl")
    private AccessService accessService;


    //list
    @RequestMapping("list.do")
    public String list(Model model, HttpServletRequest request) {
        List<AccessInfo> list = accessService.getList();
        model.addAttribute("alist", list);
        if (list != null && list.size() > 0) {
            request.getSession().setAttribute("acc2", list.get(0));
        }
        return "access_list";
    }

    //show
    @RequestMapping("show.do")
    public String show(Integer accessId, Model model) {
        AccessInfo a = accessService.getAccessInfo(accessId);
        model.addAttribute("acc", a);
        return "access_show";
    }

    //loadadd
    @RequestMapping("loadAdd.do")
    public String loadAdd(Integer accessId, Model model) {
        List<AccessInfo> list = accessService.getList();
        model.addAttribute("alist", list);
        model.addAttribute("accessId", accessId);
        return "access_add";
    }

    //add
    @RequestMapping("add.do")
    public String add(AccessInfo accessInfo, Model model) {
        accessInfo.setRoleId(accessInfo.getAccessId());

        boolean mark = accessService.add(accessInfo);
        if (mark) {
            model.addAttribute("info", "add success");
        } else {
            model.addAttribute("info", "add fail");
        }
        return "access_info";
    }

    //loadupdate
    @RequestMapping("loadUpdate.do")
    public String loadUpdate(Integer accessId, Model model) {
        AccessInfo a = accessService.getAccessInfo(accessId);
        model.addAttribute("acc", a);
        List<AccessInfo> list = accessService.getList();
        model.addAttribute("alist", list);
        return "access_update";
    }

    //update
    @RequestMapping("update.do")
    public String update(AccessInfo accessInfo, Model model) {
        accessInfo.setRoleId(accessInfo.getAccessId());
        boolean mark = accessService.update(accessInfo);
        if (mark) {
            model.addAttribute("info", "update success");
        } else {
            model.addAttribute("info", "update fail");
        }
        return  show(accessInfo.getAccessId(), model);
    }

    //update
    @RequestMapping("delete.do")
    public String delete(Integer accessId, Model model) {
        boolean mark = false;
        try{
            //check if there are levels below current access node,
            //yes then cannot delete
            if(accessService.delCheck(accessId)) {
                accessService.delete(accessId);
                mark = true;
            }else {
                model.addAttribute("info", "delete sub nodes ");
                return "access_info";

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
        }
        return "access_info";
    }
}
