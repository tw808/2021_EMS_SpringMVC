package com.ems1.system.service.impl;

import com.ems1.po.AccessInfo;
import com.ems1.po.RoleAccessInfo;
import com.ems1.po.RoleInfo;
import com.ems1.system.mapper.AccessInfoMapper;
import com.ems1.system.mapper.RoleAccessInfoMapper;
import com.ems1.system.service.RaChangeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RaChangeServiceImpl implements RaChangeService {

    @Resource(name = "roleAccessInfoMapper")
    private RoleAccessInfoMapper roleAccessInfoMapper;

    @Override
    public void add(Integer roleId, Integer[] accessId) throws Exception {
        roleAccessInfoMapper.deleteByRoleId(roleId);
        for (Integer a : accessId) {
            RoleAccessInfo rai = new RoleAccessInfo();
            rai.setRoleId(roleId);
            rai.setAccessId(a);
            roleAccessInfoMapper.insertSelective(rai);
        }

    }

    @Override
    public List<RoleAccessInfo> getRoleAccessList(RoleAccessInfo roleAccessInfo) {
        return roleAccessInfoMapper.getRoleAccessInfoList(roleAccessInfo);
    }
}
