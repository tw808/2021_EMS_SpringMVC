package com.ems1.recruitment.mapper;

import com.ems1.po.StudentInfo;

import java.util.List;

public interface StudentInfoMapper {
    int deleteByPrimaryKey(Integer stuId);

    int insert(StudentInfo record);

    int insertSelective(StudentInfo record);

    StudentInfo selectByPrimaryKey(Integer stuId);

    int updateByPrimaryKeySelective(StudentInfo record);

    int updateByPrimaryKey(StudentInfo record);

    public List<StudentInfo> getStudentList(StudentInfo record);
}