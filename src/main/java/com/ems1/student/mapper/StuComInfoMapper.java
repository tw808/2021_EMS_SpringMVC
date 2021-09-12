package com.ems1.student.mapper;

import com.ems1.po.StuComInfo;

import java.util.List;

public interface StuComInfoMapper {
    int deleteByPrimaryKey(Integer comId);

    int insert(StuComInfo record);

    int insertSelective(StuComInfo record);

    StuComInfo selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(StuComInfo record);

    int updateByPrimaryKey(StuComInfo record);

    List<StuComInfo> getStuComList(StuComInfo comm);
}