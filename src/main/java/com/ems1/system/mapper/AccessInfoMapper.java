package com.ems1.system.mapper;

import com.ems1.po.AccessInfo;

import java.util.List;

public interface AccessInfoMapper {
    int deleteByPrimaryKey(Integer accessId);

    int insert(AccessInfo record);

    int insertSelective(AccessInfo record);

    AccessInfo selectByPrimaryKey(Integer accessId);

    int updateByPrimaryKeySelective(AccessInfo record);

    int updateByPrimaryKey(AccessInfo record);

    List<AccessInfo> getAccessInfoList();

    List<AccessInfo> getAccessInfoList(AccessInfo record);

    //get access by role id
    public List<AccessInfo> getAccessByRoleIdList(Integer roleId);
}