package com.ems1.classinfo.service.impl;

import com.ems1.classinfo.mapper.ClassroomInformMapper;
import com.ems1.classinfo.service.ClassroomService;
import com.ems1.po.ClassroomInform;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ClassroomServiceImpl implements ClassroomService {
    @Resource(name="classroomInformMapper")
    ClassroomInformMapper ClassroomInformMapper;

    @Override
    public List<ClassroomInform> getClassroomList(ClassroomInform Classroom) {
        return ClassroomInformMapper.getClassroomList(Classroom);
    }

    @Override
    public boolean deleteClassroom(ClassroomInform Classroom) {

        try {
            int i = ClassroomInformMapper.deleteByPrimaryKey(Classroom.getClassroomId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateClassroom(ClassroomInform Classroom) {
        try {
            int i = ClassroomInformMapper.updateByPrimaryKeySelective(Classroom);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public ClassroomInform getClassroom(Integer discId) {

        return ClassroomInformMapper.selectByPrimaryKey(discId);
    }

    @Override
    public boolean addClassroom(ClassroomInform Classroom) {

        try {
            int count = ClassroomInformMapper.insert(Classroom);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
