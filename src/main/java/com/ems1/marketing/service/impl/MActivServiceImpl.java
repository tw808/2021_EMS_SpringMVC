package com.ems1.marketing.service.impl;

import com.ems1.marketing.mapper.MarketingActivitiesMapper;
import com.ems1.marketing.service.MActivService;
import com.ems1.po.MarketingActivities;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MActivServiceImpl implements MActivService {
    @Resource(name ="marketingActivitiesMapper")
        private MarketingActivitiesMapper marketingActivitiesMapper;
    @Override
    public boolean addMActiv(MarketingActivities info) {
        try {
            int c=marketingActivitiesMapper.insertSelective(info);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    @Override
    public boolean updateMActiv(MarketingActivities info) {
        try {
            int c=marketingActivitiesMapper.updateByPrimaryKeySelective(info);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteMActiv(Integer actId) {
        try {
            int c=marketingActivitiesMapper.deleteByPrimaryKey(actId);
            if (c>0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public MarketingActivities getMActiv(Integer actId) {
        if(actId!=null){

            return  marketingActivitiesMapper.selectByPrimaryKey(actId);
        }
        return null;
    }

    @Override
    public List<MarketingActivities> getMActivList(MarketingActivities info) {
//        if (info!=null &&  info.getActName()!=null
//        && !"".equals(info.getActName())){
//            info.setActName("%"+info.getActName()+"%");
//        }

            return marketingActivitiesMapper.getMActivList(info);
    }
}
