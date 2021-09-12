package com.ems1.recruitment.mapper;

import com.ems1.po.AuditionInfo;

import java.util.List;

public interface AuditionInfoMapper {
    int deleteByPrimaryKey(Integer audId);

    int insert(AuditionInfo record);

    int insertSelective(AuditionInfo record);

    AuditionInfo selectByPrimaryKey(Integer audId);

    int updateByPrimaryKeySelective(AuditionInfo record);

    int updateByPrimaryKey(AuditionInfo record);

    List<AuditionInfo> getAuditionList(AuditionInfo auditionInfo);
}