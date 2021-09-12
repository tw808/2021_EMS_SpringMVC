package com.ems1.classinfo.service.impl;

import com.ems1.classinfo.mapper.DisciplineMapper;
import com.ems1.classinfo.service.DisciplineService;
import com.ems1.po.Discipline;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class DisciplineServiceImpl implements DisciplineService {

    @Resource(name="disciplineMapper")
    DisciplineMapper disciplineMapper;

    @Override
    public List<Discipline> getDisciplineList(Discipline discipline) {
        return disciplineMapper.getDisciplineList(discipline);
    }

    @Override
    public boolean deleteDiscipline(Discipline discipline) {

        try {
            int i = disciplineMapper.deleteByPrimaryKey(discipline.getDiscId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateDiscipline(Discipline discipline) {
        try {
            int i = disciplineMapper.updateByPrimaryKeySelective(discipline);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Discipline getDiscipline(Integer discId) {

        return disciplineMapper.selectByPrimaryKey(discId);
    }

    @Override
    public boolean addDiscipline(Discipline discipline) {

        try {
            int count = disciplineMapper.insert(discipline);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
         }
}
