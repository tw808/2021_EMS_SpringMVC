package com.ems1.recruitment.service.impl;

import com.ems1.po.StudentInfo;
import com.ems1.recruitment.mapper.StudentInfoMapper;
import com.ems1.recruitment.service.StudentInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentInfoServiceImpl implements StudentInfoService {

    @Resource(name = "studentInfoMapper")
    private StudentInfoMapper studentInfoMapper;

    @Override
    public List<StudentInfo> getStuInfoList(StudentInfo studentInfo) {
        if (studentInfo != null && studentInfo.getStuName() != null
                && !studentInfo.getStuName().equals("")) {
            studentInfo.setStuName("%" + studentInfo.getStuName() + "%");
        }
        return studentInfoMapper.getStudentList(studentInfo);
    }

    @Override
    public boolean addStudent(StudentInfo info) {

        try {
            int count = studentInfoMapper.insert(info);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public StudentInfo getStudentInfo(Integer stuId)  {
        return studentInfoMapper.selectByPrimaryKey(stuId);
    }

    @Override
    public boolean deleteStudentInfo(StudentInfo studentInfo) {
        try {
            int i = studentInfoMapper.deleteByPrimaryKey(studentInfo.getStuId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateStudentInfo(StudentInfo studentInfo) {
        try {
            int i = studentInfoMapper.updateByPrimaryKeySelective(studentInfo);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


}
