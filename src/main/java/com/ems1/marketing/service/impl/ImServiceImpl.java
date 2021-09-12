package com.ems1.marketing.service.impl;

import com.ems1.marketing.mapper.ImInfoMapper;
import com.ems1.marketing.service.ImService;
import com.ems1.po.ImInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ImServiceImpl implements ImService {
    @Resource(name = "imInfoMapper")
    private ImInfoMapper imInfoMapper;


    @Override
    public boolean addIm(ImInfo info) {
        try {
            int c = imInfoMapper.insertSelective(info);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteIm(Integer imId) {
        try {
            int c = imInfoMapper.deleteByPrimaryKey(imId);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public ImInfo getIm(Integer imId) {
        if (imId != null) {
            return imInfoMapper.selectByPrimaryKey(imId);
        }
        return null;
    }

    @Override
    public List<ImInfo> getImList(ImInfo info) {
        System.out.println("XXXXX"+info+"XXXXX"+imInfoMapper.getImList(info));
        return imInfoMapper.getImList(info);
    }
}

