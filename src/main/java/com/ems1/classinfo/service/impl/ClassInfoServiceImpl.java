package com.ems1.classinfo.service.impl;

import com.ems1.classinfo.mapper.ClassInfoMapper;
import com.ems1.classinfo.service.ClassInfoService;
import com.ems1.po.ClassInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class ClassInfoServiceImpl implements ClassInfoService {
    @Resource(name="classInfoMapper")
    ClassInfoMapper classInfoMapper;
    
    @Override
    public ClassInfo getClass(Integer classId) {
        return classInfoMapper.selectByPrimaryKey(classId);
    }

    @Override
    public boolean updateClass(ClassInfo classInfo) {
        try {
            int i = classInfoMapper.updateByPrimaryKeySelective(classInfo);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean addClass(ClassInfo classInfo) {
        try {
            int count = classInfoMapper.insert(classInfo);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public List<Class> getClassList(ClassInfo classInfo) {
        return classInfoMapper.getClassroomList(classInfo);
    }

    @Override
    public boolean deleteClass(ClassInfo classInfo) {
        try {
            int i = classInfoMapper.deleteByPrimaryKey(classInfo.getClassId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }
}
