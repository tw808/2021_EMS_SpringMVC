package com.ems1.marketing.mapper;

import com.ems1.po.ImInfo;

import java.util.List;

public interface ImInfoMapper {
    int deleteByPrimaryKey(Integer imId);

    int insert(ImInfo record);

    int insertSelective(ImInfo record);

    ImInfo selectByPrimaryKey(Integer imId);

    int updateByPrimaryKeySelective(ImInfo record);

    int updateByPrimaryKey(ImInfo record);

    public List<ImInfo> getImList(ImInfo record);

}