package com.ems1.classinfo.service;

import com.ems1.po.ClassroomInform;

import java.util.List;

public interface ClassroomService  {
    List<ClassroomInform> getClassroomList(ClassroomInform classroom);

    boolean addClassroom(ClassroomInform classroom);

    ClassroomInform getClassroom(Integer discId);

    boolean updateClassroom(ClassroomInform classroom);

    boolean deleteClassroom(ClassroomInform classroom);
}
