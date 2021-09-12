package com.ems1.marketing.service;

import com.ems1.po.ImInfo;
import com.ems1.po.Template;

import java.util.List;

public interface ImService {

    //add
    public boolean addIm(ImInfo info);
    //delete
    public boolean deleteIm(Integer imId);
    //get
    public ImInfo getIm(Integer imId);
    //get List
    public List<ImInfo> getImList(ImInfo info);
}
