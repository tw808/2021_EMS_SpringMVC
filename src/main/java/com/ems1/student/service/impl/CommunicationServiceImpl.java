package com.ems1.student.service.impl;

import com.ems1.po.StuComInfo;
import com.ems1.student.mapper.StuComInfoMapper;
import com.ems1.student.service.CommunicationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommunicationServiceImpl implements CommunicationService {
    @Resource(name="stuComInfoMapper")
    StuComInfoMapper stuComInfoMapper;
    
    @Override
    public List<StuComInfo> getCommList(StuComInfo comm) {
        return stuComInfoMapper.getStuComList(comm);
    }

    @Override
    public boolean addComm(StuComInfo comm) {
        try {
            int count = stuComInfoMapper.insert(comm);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public StuComInfo getComm(Integer comId) {
        return stuComInfoMapper.selectByPrimaryKey(comId);
    }

    @Override
    public boolean updateComm(StuComInfo comm) {
        try {
            int i = stuComInfoMapper.updateByPrimaryKeySelective(comm);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean deleteComm(StuComInfo comm) {
        try {
            int i = stuComInfoMapper.deleteByPrimaryKey(comm.getComId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }
}
