package com.ems1.student.service.impl;

import com.ems1.po.StuGrade;
import com.ems1.student.mapper.StuGradeMapper;
import com.ems1.student.service.StuGradeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StuGradeServiceImpl implements StuGradeService {
    @Resource(name = "stuGradeMapper")
    StuGradeMapper stuGradeMapper;

    @Override
    public boolean deleteGrade(StuGrade grade) {
        try {
            int i = stuGradeMapper.deleteByPrimaryKey(grade.getStuGradeId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean updateGrade(StuGrade grade) {
        try {
            int i = stuGradeMapper.updateByPrimaryKeySelective(grade);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public StuGrade getGrade(Integer stuGradId) {
        return stuGradeMapper.selectByPrimaryKey(stuGradId);
    }

    @Override
    public boolean addGrade(StuGrade grade) {
        try {
            int count = stuGradeMapper.insert(grade);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public List<StuGrade> getGradeList(StuGrade grade) {
        return stuGradeMapper.getGradeList(grade);
    }
}
