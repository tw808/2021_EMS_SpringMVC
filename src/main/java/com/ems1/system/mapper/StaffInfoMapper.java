package com.ems1.system.mapper;

import com.ems1.po.StaffInfo;

import java.util.List;

public interface StaffInfoMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(StaffInfo record);

    int insertSelective(StaffInfo record);

    StaffInfo selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(StaffInfo record);

    int updateByPrimaryKey(StaffInfo record);

    public List<StaffInfo> getStaffInfoList(StaffInfo record);

    public List<StaffInfo> getStaffList(StaffInfo record);

    public List<StaffInfo> getTeacherInfoList(StaffInfo staff);

}