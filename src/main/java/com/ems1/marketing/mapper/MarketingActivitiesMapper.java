package com.ems1.marketing.mapper;

import com.ems1.po.MarketingActivities;

import java.util.List;

public interface MarketingActivitiesMapper {
    int deleteByPrimaryKey(Integer actId);

    int insert(MarketingActivities record);

    int insertSelective(MarketingActivities record);

    MarketingActivities selectByPrimaryKey(Integer actId);

    int updateByPrimaryKeySelective(MarketingActivities record);

    int updateByPrimaryKey(MarketingActivities record);
//list
    List<MarketingActivities> getMActivList(MarketingActivities record);

}