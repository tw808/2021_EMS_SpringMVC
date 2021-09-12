package com.ems1.student.service;

import com.ems1.po.StuGrade;

import java.util.List;

public interface StuGradeService {
    boolean deleteGrade(StuGrade grade);

    boolean updateGrade(StuGrade grade);

    StuGrade getGrade(Integer stuGradId);

    boolean addGrade(StuGrade grade);

    List<StuGrade> getGradeList(StuGrade grade);
}
