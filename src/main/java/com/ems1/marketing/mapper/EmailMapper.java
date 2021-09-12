package com.ems1.marketing.mapper;

import com.ems1.po.Email;

import java.util.List;

public interface EmailMapper {
    int deleteByPrimaryKey(Integer emId);

    int insert(Email record);

    int insertSelective(Email record);

    Email selectByPrimaryKey(Integer emId);

    int updateByPrimaryKeySelective(Email record);

    int updateByPrimaryKey(Email record);
    //get List
    List<Email> getEmList(Email record);
}