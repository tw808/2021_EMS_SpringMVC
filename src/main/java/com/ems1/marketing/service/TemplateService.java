package com.ems1.marketing.service;

import com.ems1.po.Template;

import java.util.List;

public interface TemplateService {
    //add
    public boolean addTemplate(Template info);
    //update
    public boolean updateTemplate(Template info);
    //delete
    public boolean deleteTemplate(Integer templateId);
    //get
    public Template getTemplate(Integer templateId);
    //get List
    public List<Template> getTemplateList(Template info);
}
