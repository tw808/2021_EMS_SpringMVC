package com.ems1.recruitment.service.impl;

import com.ems1.po.TrackRecInfo;
import com.ems1.recruitment.mapper.TrackRecInfoMapper;
import com.ems1.recruitment.service.TrackRecService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TrackRecServiceImpl  implements TrackRecService {

    @Resource(name="trackRecInfoMapper")
    private TrackRecInfoMapper trackRecInfoMapper;
    @Override
    public boolean addTrackRecord(TrackRecInfo info) {

        try {
            int count=trackRecInfoMapper.insertSelective(info);
            if (count>0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<TrackRecInfo> getTrackRecList(TrackRecInfo info) {
        return trackRecInfoMapper.getTrackRecList(info);
    }

    @Override
    public TrackRecInfo getTrackRecord(Integer trackRecId) {
        return trackRecInfoMapper.selectByPrimaryKey(trackRecId);
    }

    @Override
    public boolean updateTrackRec(TrackRecInfo info) {
        try {
            int i = trackRecInfoMapper.updateByPrimaryKeySelective(info);
            if(i>0){
            return true;}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteTrackRec(TrackRecInfo info) {
        try {
            int i = trackRecInfoMapper.deleteByPrimaryKey(info.getTrackRecId());
            if(i>0){
                return true;}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }
}
