package com.ems1.classinfo.service;

import com.ems1.po.Discipline;

import java.util.List;

public interface
DisciplineService {
    List<Discipline> getDisciplineList(Discipline discipline);

    boolean deleteDiscipline(Discipline discipline);

    boolean updateDiscipline(Discipline discipline);

    Discipline getDiscipline(Integer discId);

    boolean addDiscipline(Discipline discipline);
}
