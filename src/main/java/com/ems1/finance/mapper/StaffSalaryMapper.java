package com.ems1.finance.mapper;

import com.ems1.po.StaffSalary;

import java.util.List;

public interface StaffSalaryMapper {
    int deleteByPrimaryKey(Integer staffSalId);

    int insert(StaffSalary record);

    int insertSelective(StaffSalary record);

    StaffSalary selectByPrimaryKey(Integer staffSalId);

    int updateByPrimaryKeySelective(StaffSalary record);

    int updateByPrimaryKey(StaffSalary record);

    List<StaffSalary> getSalaryList(StaffSalary salary);
}