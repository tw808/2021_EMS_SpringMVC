package com.ems1.marketing.service;

import com.ems1.po.Email;
import com.ems1.po.ImInfo;

import java.util.List;

public interface EmService {

    //add
    public boolean addEm(Email info);
    //delete
    public boolean deleteEm(Integer emId);
    //get
    public Email getEm(Integer emId);
    //get List
    public List<Email> getEmList(Email info);
}
