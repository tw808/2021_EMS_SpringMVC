package com.ems1.classinfo.service.impl;

import com.ems1.classinfo.service.TeacherService;
import com.ems1.po.StaffInfo;
import com.ems1.system.mapper.StaffInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class TeacherServiceImpl implements TeacherService {

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
    public List<StaffInfo> getTeacherList(StaffInfo staff) {
        return staffInfoMapper.getTeacherInfoList(staff);
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
