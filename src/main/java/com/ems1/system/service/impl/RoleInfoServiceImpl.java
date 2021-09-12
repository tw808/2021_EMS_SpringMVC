package com.ems1.system.service.impl;

import com.ems1.po.AccessInfo;
import com.ems1.po.RoleInfo;
import com.ems1.system.mapper.RoleInfoMapper;
import com.ems1.system.mapper.StaffInfoMapper;
import com.ems1.system.service.RoleInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoleInfoServiceImpl implements RoleInfoService {
    @Resource(name = "roleInfoMapper")
    private RoleInfoMapper roleInfoMapper;

    @Override
    public boolean addRole(RoleInfo roleInfo) {
        try {
            if(roleInfo!=null){
                roleInfo.setRoleStatus("1");
            }
            int i=roleInfoMapper.insertSelective(roleInfo);
            if(i>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<RoleInfo> getRoleList(RoleInfo roleInfo) {
        if(roleInfo!=null && roleInfo.getRoleName()!=null &&
                !roleInfo.getRoleName().equals("")){
            roleInfo.setRoleName("%"+roleInfo.getRoleName()+"%");
        }
        return roleInfoMapper.getRoleInfoList(roleInfo);
    }

    @Override
    public RoleInfo getRoleInfo(Integer roleId) {
        return roleInfoMapper.selectByPrimaryKey(roleId);
    }

    @Override
    public Boolean updateRole(RoleInfo roleInfo) {
        try {
            if(roleInfo!=null){
                roleInfo.setRoleStatus("1");
            }
            int i=roleInfoMapper.updateByPrimaryKey(roleInfo);
            if(i>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean deleteStaff(RoleInfo roleInfo) {
        try {
            int i = roleInfoMapper.deleteByPrimaryKey(roleInfo.getRoleId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

}
