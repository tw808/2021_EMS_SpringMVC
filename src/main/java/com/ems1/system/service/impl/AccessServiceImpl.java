package com.ems1.system.service.impl;

import com.ems1.po.AccessInfo;
import com.ems1.system.mapper.AccessInfoMapper;
import com.ems1.system.mapper.RoleAccessInfoMapper;
import com.ems1.system.service.AccessService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AccessServiceImpl implements AccessService {
    //access Mapper
    @Resource(name = "accessInfoMapper")
    private AccessInfoMapper accessInfoMapper;

    //roleAccess mapper
    @Resource(name = "roleAccessInfoMapper")
    private RoleAccessInfoMapper roleAccessInfoMapper;

    //getList
    @Override
    public List<AccessInfo> getList() {
        return accessInfoMapper.getAccessInfoList();
    }

    //getAccessInfo
    @Override
    public AccessInfo getAccessInfo(Integer accessId) {
        return accessInfoMapper.selectByPrimaryKey(accessId);
    }

    //add
    @Override
    public boolean add(AccessInfo accessInfo) {
        try {
            int c = accessInfoMapper.insertSelective(accessInfo);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    //update
    @Override
    public boolean update(AccessInfo accessInfo) {
        try {
            int c = accessInfoMapper.updateByPrimaryKeySelective(accessInfo);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //delete
    @Override
    public void delete(Integer accessId) throws Exception {
        if (accessId != null) {
            roleAccessInfoMapper.deleteByAccessId(accessId);
            accessInfoMapper.deleteByPrimaryKey(accessId);
        }
    }

    @Override
    public boolean delCheck(Integer accessId) {

        try {
            if (accessId != null) {
                AccessInfo a = new AccessInfo();
                a.setAccessId(accessId);
                a.setRoleId(accessId);
                List list = accessInfoMapper.getAccessInfoList(a);
                if (list != null && list.size() > 0) {
                    return false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    @Override
    public List<AccessInfo> getAccessList(Integer roleId) {

        return accessInfoMapper.getAccessByRoleIdList(roleId);
    }
}
