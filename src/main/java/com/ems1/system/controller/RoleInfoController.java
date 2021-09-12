package com.ems1.system.controller;

import com.ems1.po.RoleInfo;
import com.ems1.po.StaffInfo;
import com.ems1.system.service.RoleInfoService;
import com.ems1.system.service.StaffInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/roleinfo/")
public class RoleInfoController {
    @Resource(name = "roleInfoServiceImpl")
    private RoleInfoService roleInfoService;
    @Resource(name = "staffInfoServiceImpl")
    private StaffInfoService staffInfoService;

    //rlist
    @RequestMapping("rlist.do")
    public String rlist(StaffInfo staff, Model model) {
        List<StaffInfo> rlist = staffInfoService.getStaffList(staff);
        model.addAttribute("srlist", rlist);
        return  "staffinfo_rlist";
    }

    //staff role change
    @RequestMapping("loadchange.do")
    public String loadStaffInfo(Integer staffId, Model model) {
        StaffInfo staffInfo = staffInfoService.getStaffInfo(staffId);
        model.addAttribute("staffInfo", staffInfo);
        List<RoleInfo> rlist = roleInfoService.getRoleList(null);
        model.addAttribute("rlist", rlist);
        return "role_change";
    }
    //update staff role
    @RequestMapping("rupdate.do")
    public String updateStaffInfo(StaffInfo staff, Model model) {
        Boolean mark = staffInfoService.updateStaff(staff);
        if (mark) {
            model.addAttribute("info", "update success");
        } else {
            model.addAttribute("info", "update fail");
        }
        return this.rlist(null, model);
    }

    //add
    @RequestMapping("add.do")
    public String add(RoleInfo roleInfo, Model model) {
        Boolean mark = roleInfoService.addRole(roleInfo);
        if (mark) {
            model.addAttribute("info", "add success");
        } else {
            model.addAttribute("info", "add fail");
        }
        return this.list(null, model);
    }

    //list
    @RequestMapping("list.do")
    public String list(RoleInfo roleInfo, Model model) {
        List<RoleInfo> rlist = roleInfoService.getRoleList(roleInfo);

        model.addAttribute("rlist", rlist);
        return "roleinfo_list";
    }

    //load
    @RequestMapping("load.do")
    public String loadUpdate(Integer roleId, Model model) {
        RoleInfo roleInfo = roleInfoService.getRoleInfo(roleId);
        model.addAttribute("roleInfo", roleInfo);
        return "roleinfo_update";
    }

    //update
    @RequestMapping("update.do")
    public String update(RoleInfo roleInfo, Model model) {
        Boolean mark = roleInfoService.updateRole(roleInfo);
        if (mark) {
            model.addAttribute("info", "update success");
        } else {
            model.addAttribute("info", "update fail");
        }
        return this.list(null, model);
    }

    //delete
    @RequestMapping("delete.do")
    public String delete(RoleInfo roleInfo, Model model) {
        roleInfo.setRoleStatus("0");
        boolean mark = roleInfoService.deleteStaff(roleInfo);
        if (mark) {
            model.addAttribute("info", "delete success");
        } else {
            model.addAttribute("info", "delete fail");
        }
        return this.list(null, model);
    }
}
