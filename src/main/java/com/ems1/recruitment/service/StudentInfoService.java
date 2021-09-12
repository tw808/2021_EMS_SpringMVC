package com.ems1.recruitment.service;

import com.ems1.po.StudentInfo;

import java.util.List;

public interface StudentInfoService {
    public List<StudentInfo> getStuInfoList(StudentInfo studentInfo);
    public boolean addStudent(StudentInfo info);

    public StudentInfo getStudentInfo(Integer stuId);

    public boolean deleteStudentInfo(StudentInfo studentInfo);

    public boolean updateStudentInfo(StudentInfo studentInfo);
}
