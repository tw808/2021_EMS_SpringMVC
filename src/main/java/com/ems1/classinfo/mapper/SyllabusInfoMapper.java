package com.ems1.classinfo.mapper;

import com.ems1.po.SyllabusInfo;

import java.util.List;

public interface SyllabusInfoMapper {
    int deleteByPrimaryKey(Integer syllId);

    int insert(SyllabusInfo record);

    int insertSelective(SyllabusInfo record);

    SyllabusInfo selectByPrimaryKey(Integer syllId);

    int updateByPrimaryKeySelective(SyllabusInfo record);

    int updateByPrimaryKey(SyllabusInfo record);

    List<SyllabusInfo> getDisciplineList(SyllabusInfo syllabus);
}