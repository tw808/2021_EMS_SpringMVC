package com.ems1.system.service;

import com.ems1.po.AccessInfo;

import java.util.List;

public interface AccessService {
    //list.do
    public List<AccessInfo> getList();

    //show.do
    public AccessInfo getAccessInfo(Integer accessId);

    //add
    public boolean add(AccessInfo accessInfo);

    //update
    public boolean update(AccessInfo accessInfo);

    //delete
    public void delete(Integer accessId) throws Exception;

    //delete check if there are levels below
    public boolean delCheck(Integer accessId);

    //access list
    public List<AccessInfo> getAccessList(Integer roleId);
}
