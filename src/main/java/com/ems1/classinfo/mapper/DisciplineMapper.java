package com.ems1.classinfo.mapper;

import com.ems1.po.Discipline;

import java.util.List;

public interface DisciplineMapper {
    int deleteByPrimaryKey(Integer discId);

    int insert(Discipline record);

    int insertSelective(Discipline record);

    Discipline selectByPrimaryKey(Integer discId);

    int updateByPrimaryKeySelective(Discipline record);

    int updateByPrimaryKey(Discipline record);

    List<Discipline> getDisciplineList(Discipline discipline);
}