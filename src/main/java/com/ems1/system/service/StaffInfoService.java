package com.ems1.system.service;

import com.ems1.po.StaffInfo;

import java.util.List;

public interface StaffInfoService {
    //add staff
    public boolean addStaff(StaffInfo staff);

    //list staff
    public List<StaffInfo> getList(StaffInfo staff);
    //list staff
    public List<StaffInfo> getStaffList(StaffInfo staff);
    //get staffInfo
    public StaffInfo getStaffInfo(Integer staffId);

    //edit staff
    public boolean updateStaff(StaffInfo staff);
    //edit staff
    public boolean deleteStaff(StaffInfo staff);

}
