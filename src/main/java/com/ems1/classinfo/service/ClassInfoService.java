package com.ems1.classinfo.service;

import com.ems1.po.ClassInfo;

import java.util.List;

public interface ClassInfoService {
    ClassInfo getClass(Integer classId);

    boolean updateClass(ClassInfo classInfo);

    boolean addClass(ClassInfo classInfo);

    List<Class> getClassList(ClassInfo classInfo);

    boolean deleteClass(ClassInfo classInfo);
}
