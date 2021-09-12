package com.ems1.student.mapper;

import com.ems1.po.StuGrade;

import java.util.List;

public interface StuGradeMapper {
    int deleteByPrimaryKey(Integer stuGradeId);

    int insert(StuGrade record);

    int insertSelective(StuGrade record);

    StuGrade selectByPrimaryKey(Integer stuGradeId);

    int updateByPrimaryKeySelective(StuGrade record);

    int updateByPrimaryKey(StuGrade record);

    List<StuGrade> getGradeList(StuGrade grade);
}