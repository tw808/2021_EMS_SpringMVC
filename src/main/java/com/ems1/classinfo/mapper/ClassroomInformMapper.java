package com.ems1.classinfo.mapper;

import com.ems1.po.ClassroomInform;

import java.util.List;

public interface ClassroomInformMapper {
    int deleteByPrimaryKey(Integer classroomId);

    int insert(ClassroomInform record);

    int insertSelective(ClassroomInform record);

    ClassroomInform selectByPrimaryKey(Integer classroomId);

    int updateByPrimaryKeySelective(ClassroomInform record);

    int updateByPrimaryKey(ClassroomInform record);

    List<ClassroomInform> getClassroomList(ClassroomInform classroom);
}