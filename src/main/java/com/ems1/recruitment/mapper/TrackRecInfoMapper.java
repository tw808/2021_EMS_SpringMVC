package com.ems1.recruitment.mapper;

import com.ems1.po.TrackRecInfo;

import java.util.List;

public interface TrackRecInfoMapper {
    int deleteByPrimaryKey(Integer trackRecId);

    int insert(TrackRecInfo record);

    int insertSelective(TrackRecInfo record);

    TrackRecInfo selectByPrimaryKey(Integer trackRecId);

    int updateByPrimaryKeySelective(TrackRecInfo record);

    int updateByPrimaryKey(TrackRecInfo record);

    public List<TrackRecInfo> getTrackRecList(TrackRecInfo record);
}