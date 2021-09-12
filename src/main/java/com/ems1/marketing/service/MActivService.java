package com.ems1.marketing.service;

import com.ems1.po.MarketingActivities;

import java.util.List;

public interface MActivService {
    //add
    public boolean addMActiv(MarketingActivities info);
    //update
    public boolean updateMActiv(MarketingActivities info);
    //delete
    public boolean deleteMActiv(Integer actId);
    //get
    public MarketingActivities getMActiv(Integer actId);
    //get List
    public List<MarketingActivities> getMActivList(MarketingActivities info);
}
