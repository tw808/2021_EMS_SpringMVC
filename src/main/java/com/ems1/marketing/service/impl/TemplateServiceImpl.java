package com.ems1.marketing.service.impl;

import com.ems1.marketing.mapper.TemplateMapper;
import com.ems1.marketing.service.TemplateService;
import com.ems1.po.Template;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class TemplateServiceImpl implements TemplateService {
    @Resource(name = "templateMapper")
    private TemplateMapper templateMapper;

    @Override
    public boolean addTemplate(Template info) {
        try {
            int c=templateMapper.insertSelective(info);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    @Override
    public boolean updateTemplate(Template info) {
        try {
            int c=templateMapper.updateByPrimaryKeySelective(info);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteTemplate(Integer templateId) {
        try {
            int c=templateMapper.deleteByPrimaryKey(templateId);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Template getTemplate(Integer templateId) {
      if(templateId!=null){
          return  templateMapper.selectByPrimaryKey(templateId);
      }
        return null;
    }

    @Override
    public List<Template> getTemplateList(Template info) {
        return templateMapper.getTemplateList(info);
    }
}
