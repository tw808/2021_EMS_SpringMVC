package com.ems1.system.controller;

import com.ems1.po.AccessInfo;
import com.ems1.po.RoleAccessInfo;
import com.ems1.po.RoleInfo;
import com.ems1.system.dto.AccessDTO;
import com.ems1.system.service.AccessService;
import com.ems1.system.service.RaChangeService;
import com.ems1.system.service.RoleInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("raChange")
public class RaEditController {
    @Resource(name = "roleInfoServiceImpl")
    private RoleInfoService roleInfoService;
    @Resource(name = "accessServiceImpl")
    private AccessService accessService;
    @Resource(name = "raChangeServiceImpl")
    private RaChangeService raChangeService;

    //list
    @RequestMapping("list.do")
    public String list(RoleInfo roleInfo, Model model) {
        List<RoleInfo> rlist = roleInfoService.getRoleList(roleInfo);

        model.addAttribute("rlist", rlist);
        return "ra_editList";
    }

    //load
    @RequestMapping("load.do")
    public String load(Integer roleId, Model model) {
        RoleInfo roleInfo = roleInfoService.getRoleInfo(roleId);
        model.addAttribute("roleInfo", roleInfo);
        //roleaccess
        RoleAccessInfo rai = new RoleAccessInfo();
        rai.setRoleId(roleId);
        List<RoleAccessInfo> railist = raChangeService.getRoleAccessList(rai);
        //menu access
        List<AccessInfo> list = accessService.getList();
        List<AccessDTO> dtolist = new ArrayList<AccessDTO>();
//        Boolean checked = false;
        for (AccessInfo a : list) {
            if (a != null && a.getAccessPid() == 0) {
                AccessDTO dto = new AccessDTO();
                //check
                if (railist != null && railist.size() > 0) {
                    for (RoleAccessInfo rainfo : railist) {
                        if (rainfo.getAccessId() == a.getAccessId()) {
                            a.setChecked(true);
                            System.out.println("abcde"+a.getChecked());
                        }
                    }
                }
                //level1 menu
                dto.setAcc(a);
                //submenu
                List<AccessInfo> sublist = new ArrayList<AccessInfo>();
                getAccess(sublist, railist, list, a.getAccessId());
                dto.setList(sublist);
                dtolist.add(dto);
//                checked = a.getChecked();
            }
        }
        model.addAttribute("dtolist", dtolist);
//        model.addAttribute("checked", checked);
        return "ra_edit";
    }

    //get submenu
    public void getAccess(List<AccessInfo> sublist,
                          List<RoleAccessInfo> railist,
                          List<AccessInfo> list, Integer accessId) {
        if (list != null && list.size() > 0) {
            for (AccessInfo a : list) {
                if (a != null && a.getAccessPid() != null && a.getAccessPid().equals(accessId)) {
                    //check
                    if (railist != null && railist.size() > 0) {
                        for (RoleAccessInfo rainfo : railist) {
                            if (rainfo.getAccessId() == a.getAccessId()) {
                                a.setChecked(true);
                                System.out.println("aabbccdd"+a.getChecked());
                            }
                        }
                    }
                    sublist.add(a);
                    getAccess(sublist, railist, list, a.getAccessId());
                }
            }
        }
    }

    //add accessId & roleId
    @RequestMapping("add.do")
    public String add(Integer roleId, Integer[] accessId, Model model) {


        boolean mark = false;
        if (accessId != null && accessId.length > 0) {
            try {
                raChangeService.add(roleId, accessId);
                mark = true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (mark) {
            model.addAttribute("info", "add success");
        } else {
            model.addAttribute("info", "add fail");
        }
        return list(null, model);
    }
}

