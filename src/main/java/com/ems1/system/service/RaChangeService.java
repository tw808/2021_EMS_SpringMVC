package com.ems1.system.service;

import com.ems1.po.AccessInfo;
import com.ems1.po.RoleAccessInfo;

import java.util.List;

public interface RaChangeService {
    //add
    public void add(Integer roleId, Integer[] accessId) throws Exception;

    //list
    public List<RoleAccessInfo> getRoleAccessList(RoleAccessInfo roleAccessInfo);
}
