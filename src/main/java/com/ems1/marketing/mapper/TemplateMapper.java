package com.ems1.marketing.mapper;

import com.ems1.po.Template;

import java.util.List;

public interface TemplateMapper {
    int deleteByPrimaryKey(Integer templateId);

    int insert(Template record);

    int insertSelective(Template record);

    Template selectByPrimaryKey(Integer templateId);

    int updateByPrimaryKeySelective(Template record);

    int updateByPrimaryKey(Template record);

    public List<Template> getTemplateList(Template record);
}