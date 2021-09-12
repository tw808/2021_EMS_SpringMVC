package com.ems1.system.mapper;

import com.ems1.po.RoleInfo;
import com.ems1.po.StaffInfo;

import java.util.List;

public interface RoleInfoMapper {
    int deleteByPrimaryKey(Integer roleId);

    int insert(RoleInfo record);

    int insertSelective(RoleInfo record);

    RoleInfo selectByPrimaryKey(Integer roleId);

    int updateByPrimaryKeySelective(RoleInfo record);

    int updateByPrimaryKey(RoleInfo record);

    List<RoleInfo> getRoleInfoList(RoleInfo roleInfo);


}