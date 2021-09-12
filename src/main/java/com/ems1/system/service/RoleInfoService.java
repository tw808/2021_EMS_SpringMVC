package com.ems1.system.service;

import com.ems1.po.AccessInfo;
import com.ems1.po.RoleInfo;

import java.util.List;

public interface RoleInfoService {
    //    addRole
    public boolean addRole(RoleInfo roleInfo);

    //list
    public List<RoleInfo> getRoleList(RoleInfo roleInfo);

    //load info
    public RoleInfo getRoleInfo(Integer roleId);

    Boolean updateRole(RoleInfo roleInfo);

    boolean deleteStaff(RoleInfo roleInfo);


}
