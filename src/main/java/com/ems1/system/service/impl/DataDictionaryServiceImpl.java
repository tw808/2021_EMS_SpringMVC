package com.ems1.system.service.impl;

import com.ems1.po.DataDictionary;
import com.ems1.system.mapper.DataDictionaryMapper;
import com.ems1.system.service.DataDictionaryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DataDictionaryServiceImpl implements DataDictionaryService {
    @Resource(name = "dataDictionaryMapper")
    private DataDictionaryMapper dataDictionaryMapper;

    @Override
    public List<DataDictionary> getDataList(DataDictionary dataDictionary) {
        return dataDictionaryMapper.getDataList(dataDictionary);
    }

    @Override
    public boolean addData(DataDictionary dataDictionary) {

        try {
            int count = dataDictionaryMapper.insertSelective(dataDictionary);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    @Override
    public DataDictionary getDataDictionary(Integer dataId) {
        return dataDictionaryMapper.selectByPrimaryKey(dataId);
    }

    @Override
    public boolean editData(DataDictionary dataDictionary) {
        try {
            int count = dataDictionaryMapper.updateByPrimaryKeySelective(dataDictionary);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteData(Integer dataId) {
        try {
            int count = dataDictionaryMapper.deleteByPrimaryKey(dataId);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}



