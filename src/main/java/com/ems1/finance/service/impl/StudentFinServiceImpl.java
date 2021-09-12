package com.ems1.finance.service.impl;

import com.ems1.finance.mapper.StudentFinMapper;
import com.ems1.finance.service.StudentFinService;
import com.ems1.po.StudentFin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentFinServiceImpl implements StudentFinService {
    @Resource(name="studentFinMapper")
    StudentFinMapper studentFinMapper;
    @Override
    public List<StudentFin> getStuFinList(StudentFin stuFin) {
        return studentFinMapper.getStuFinList(stuFin);
    }

    @Override
    public boolean addStuFin(StudentFin stuFin) {

        try {
            int count = studentFinMapper.insert(stuFin);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteStuFin(StudentFin stuFin) {
        try {
            int i = studentFinMapper.deleteByPrimaryKey(stuFin.getPayId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public StudentFin getstuFin(StudentFin stuFin) {
        return studentFinMapper.selectByPrimaryKey(stuFin.getPayId());
    }
}
