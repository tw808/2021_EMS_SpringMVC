package com.ems1.classinfo.mapper;

import com.ems1.po.ClassInfo;

import java.util.List;

public interface ClassInfoMapper {
    int deleteByPrimaryKey(Integer classId);

    int insert(ClassInfo record);

    int insertSelective(ClassInfo record);

    ClassInfo selectByPrimaryKey(Integer classId);

    int updateByPrimaryKeySelective(ClassInfo record);

    int updateByPrimaryKey(ClassInfo record);

    List<Class> getClassroomList(ClassInfo classInfo);
}