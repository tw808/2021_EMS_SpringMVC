package com.ems1.classinfo.service.impl;

import com.ems1.classinfo.mapper.SyllabusInfoMapper;
import com.ems1.classinfo.service.SyllabusService;
import com.ems1.po.SyllabusInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SyllabusServiceImpl implements SyllabusService {
    @Resource(name = "syllabusInfoMapper")
    SyllabusInfoMapper syllabusInfoMapper;

    @Override
    public boolean deleteSyllabus(SyllabusInfo syllabus) {
        try {
            int i = syllabusInfoMapper.deleteByPrimaryKey(syllabus.getSyllId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateSyllabus(SyllabusInfo syllabus) {
        try {
            int i = syllabusInfoMapper.updateByPrimaryKeySelective(syllabus);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    @Override
    public SyllabusInfo getSyllabus(Integer syllId) {
        return syllabusInfoMapper.selectByPrimaryKey(syllId);
    }

    @Override
    public boolean addSyllabus(SyllabusInfo syllabus) {
        try {
            int count = syllabusInfoMapper.insert(syllabus);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<SyllabusInfo> getSyllabusList(SyllabusInfo syllabus) {
        return syllabusInfoMapper.getDisciplineList(syllabus);
    }
}
