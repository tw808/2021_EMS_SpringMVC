package com.ems1.finance.mapper;

import com.ems1.po.StudentFin;

import java.util.List;

public interface StudentFinMapper {
    int deleteByPrimaryKey(Integer payId);

    int insert(StudentFin record);

    int insertSelective(StudentFin record);

    StudentFin selectByPrimaryKey(Integer payId);

    int updateByPrimaryKeySelective(StudentFin record);

    int updateByPrimaryKey(StudentFin record);

    List<StudentFin> getStuFinList(StudentFin record);
}