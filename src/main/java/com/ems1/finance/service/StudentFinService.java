package com.ems1.finance.service;

import com.ems1.po.StudentFin;

import java.util.List;

public interface StudentFinService {
    List<StudentFin> getStuFinList(StudentFin stuFin);

    boolean addStuFin(StudentFin stuFin);

    boolean deleteStuFin(StudentFin stuFin);

    StudentFin getstuFin(StudentFin stuFin);
}
