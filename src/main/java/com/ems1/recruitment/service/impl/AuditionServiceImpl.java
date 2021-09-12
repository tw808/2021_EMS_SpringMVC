package com.ems1.recruitment.service.impl;

import com.ems1.po.AuditionInfo;
import com.ems1.recruitment.mapper.AuditionInfoMapper;
import com.ems1.recruitment.service.AuditionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AuditionServiceImpl implements AuditionService {
    @Resource(name="auditionInfoMapper")
    private AuditionInfoMapper auditionInfoMapper;
    @Override
    public boolean addAudition(AuditionInfo info) {

        try {
            int count=auditionInfoMapper.insertSelective(info);
            if (count>0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public List<AuditionInfo> getAuditionList(AuditionInfo auditionInfo) {
        return auditionInfoMapper.getAuditionList(auditionInfo);
    }

    @Override
    public AuditionInfo getAudition(Integer audId) {
        return auditionInfoMapper.selectByPrimaryKey(audId);
    }

    @Override
    public boolean updateAudtion(AuditionInfo info) {
        try {
            int i = auditionInfoMapper.updateByPrimaryKeySelective(info);
            if(i>0){
                return true;}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean deleteAudition(AuditionInfo info) {
        try {
            int i = auditionInfoMapper.deleteByPrimaryKey(info.getAudId());
            if(i>0){
                return true;}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;      }
}
