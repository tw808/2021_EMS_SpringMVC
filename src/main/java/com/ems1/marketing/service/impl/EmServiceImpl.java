package com.ems1.marketing.service.impl;

import com.ems1.marketing.service.EmService;
import com.ems1.po.Email;
import com.ems1.marketing.mapper.EmailMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmServiceImpl implements EmService {
    @Resource(name = "emailMapper")
    private EmailMapper emailMapper;

    @Override
    public boolean addEm(Email info) {
        try {
            int c = emailMapper.insertSelective(info);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteEm(Integer emId) {
        try {
            int c = emailMapper.deleteByPrimaryKey(emId);
            if (c > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Email getEm(Integer emId) {
        if (emId != null) {
            return emailMapper.selectByPrimaryKey(emId);
        }
        return null;
    }

    @Override
    public List<Email> getEmList(Email info) {
        return emailMapper.getEmList(info);
    }
}
