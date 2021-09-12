package com.ems1.system.controller;

import com.ems1.po.AccessInfo;
import com.ems1.po.StaffInfo;
import com.ems1.system.dto.AccessDTO;
import com.ems1.system.dto.ReportInfo;
import com.ems1.system.service.AccessService;
import com.ems1.system.service.ReportService;
import com.ems1.system.service.StaffInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {
    @Resource(name = "staffInfoServiceImpl")
    private StaffInfoService staffInfoService;
    @Resource(name = "accessServiceImpl")
    private AccessService accessService;
    @Resource(name = "reportServiceImpl")
    private ReportService reportService;

    @RequestMapping("/out.do")
    public String out(HttpServletRequest request) {
        //get session
        HttpSession session = request.getSession();
        session.setAttribute("staff", null);
        request.setAttribute("dtol", null);
        return "login_info";
    }

    @RequestMapping("/login.do")
    public String login(StaffInfo staffInfo, HttpServletRequest request) {
        //get session
        HttpSession session = request.getSession();
        if (staffInfo != null && staffInfo.getUserNum() != null
                && !staffInfo.getUserNum().equals("")
                && staffInfo.getUserPwd() != null && !staffInfo.getUserPwd().equals("")) {
            //get user info
            List<StaffInfo> list = staffInfoService.getList(staffInfo);
            if (list != null && list.size() > 0) {
                StaffInfo staff = list.get(0);
                //add staff info into session
                session.setAttribute("staff", staff);
                ////get Report Info//////////
                ReportInfo reportInfo = reportService.getReportInfo();
                session.setAttribute("reportInfo", reportInfo);
                //////////
                if (staff.getRoleId() != null) {
                    //list access according to roleId
                    List<AccessInfo> accessList =
                            accessService.getAccessList(staff.getRoleId());
                    //list menu
                    List<AccessDTO> dtolist = new ArrayList<AccessDTO>();
                    for (AccessInfo a : accessList) {
                        if (a != null && a.getAccessPid() == 0) {
                            AccessDTO dto = new AccessDTO();
                            dto.setAcc(a);
                            List<AccessInfo> sublist = new ArrayList<AccessInfo>();
                            getAccess(sublist, accessList, a.getAccessId());
                            dto.setList(sublist);
                            dtolist.add(dto);
                        }
                    }
                    request.setAttribute("dtol", dtolist);
                    request.setAttribute("info", "login success");
                    return "index";
                }
            } else {
                request.setAttribute("info", "login error");
                return "login_info";
            }
        } else {
            request.setAttribute("info", "enter Name or Password");
            return "login_info";
        }
        return "login_info";
    }

    //get submenu
    public void getAccess(List<AccessInfo> sublist,
                          List<AccessInfo> list, Integer accessId) {
        if (list != null && list.size() > 0) {
            for (AccessInfo a : list) {
                if (a != null && a.getAccessPid() != null &&
                        a.getAccessPid().equals(accessId)) {
                    sublist.add(a);
                    getAccess(sublist, list, a.getAccessId());
                }
            }
        }
    }

}
