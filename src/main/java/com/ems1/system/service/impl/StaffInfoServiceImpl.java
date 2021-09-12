package com.ems1.system.service.impl;

import com.ems1.po.AccessInfo;
import com.ems1.po.StaffInfo;
import com.ems1.system.mapper.StaffInfoMapper;
import com.ems1.system.service.StaffInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

// as bean "@Resource(name = "staffInfoServiceImpl")"
@Service
public class StaffInfoServiceImpl implements StaffInfoService {
    @Resource(name = "staffInfoMapper")
    private StaffInfoMapper staffInfoMapper;

    @Override
    public boolean addStaff(StaffInfo staff) {
        int i = staffInfoMapper.insertSelective(staff);
        if (i > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<StaffInfo> getList(StaffInfo staff) {
        return staffInfoMapper.getStaffInfoList(staff);
    }

    @Override
    public List<StaffInfo> getStaffList(StaffInfo staff) {
        return staffInfoMapper.getStaffList(staff);
    }

    @Override
    public StaffInfo getStaffInfo(Integer staffId) {
        return staffInfoMapper.selectByPrimaryKey(staffId);
    }

    @Override
    public boolean updateStaff(StaffInfo staff) {
        try {
            int i = staffInfoMapper.updateByPrimaryKeySelective(staff);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteStaff(StaffInfo staff) {
        try {
            int i = staffInfoMapper.deleteByPrimaryKey(staff.getStaffId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


}
