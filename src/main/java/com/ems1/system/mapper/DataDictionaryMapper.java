package com.ems1.system.mapper;

import com.ems1.po.DataDictionary;

import java.util.List;

public interface DataDictionaryMapper {
    int deleteByPrimaryKey(Integer dataId);

    int insert(DataDictionary record);

    int insertSelective(DataDictionary record);

    DataDictionary selectByPrimaryKey(Integer dataId);

    int updateByPrimaryKeySelective(DataDictionary record);

    int updateByPrimaryKey(DataDictionary record);
//getList
     List<DataDictionary> getDataList(DataDictionary record);
}