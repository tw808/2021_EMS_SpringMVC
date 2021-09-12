package com.ems1.system.mapper;

import com.ems1.po.RoleAccessInfo;

import java.util.List;

public interface RoleAccessInfoMapper {
    int deleteByPrimaryKey(Integer roleAccessId);

    int insert(RoleAccessInfo record);

    int insertSelective(RoleAccessInfo record);

    RoleAccessInfo selectByPrimaryKey(Integer roleAccessId);

    int updateByPrimaryKeySelective(RoleAccessInfo record);

    int updateByPrimaryKey(RoleAccessInfo record);

    //delete by accessId
    int deleteByAccessId(Integer accessId) throws Exception;
    //delete by roleId
    int deleteByRoleId(Integer roleId) throws Exception;
//list
    public List<RoleAccessInfo> getRoleAccessInfoList(RoleAccessInfo record);
}