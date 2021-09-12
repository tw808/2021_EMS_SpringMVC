package com.ems1.classinfo.service;

import com.ems1.po.SyllabusInfo;

import java.util.List;

public interface SyllabusService {
    boolean deleteSyllabus(SyllabusInfo syllabus);

    boolean updateSyllabus(SyllabusInfo syllabus);

    SyllabusInfo getSyllabus(Integer syllId);

    boolean addSyllabus(SyllabusInfo syllabus);

    List<SyllabusInfo> getSyllabusList(SyllabusInfo syllabus);
}
