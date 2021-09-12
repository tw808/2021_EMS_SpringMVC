package com.ems1.classinfo.service;

import com.ems1.po.StaffInfo;

import java.util.List;

public interface TeacherService {
    boolean deleteStaff(StaffInfo staff);

    boolean updateStaff(StaffInfo staff);

    StaffInfo getStaffInfo(Integer staffId);

    List<StaffInfo> getTeacherList(StaffInfo staff);

    boolean addStaff(StaffInfo staff);
}
