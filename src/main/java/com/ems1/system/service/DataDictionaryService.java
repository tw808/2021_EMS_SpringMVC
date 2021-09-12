package com.ems1.system.service;

import com.ems1.po.DataDictionary;

import java.util.List;

public interface DataDictionaryService {
    public List<DataDictionary> getDataList(DataDictionary dataDictionary);

    public boolean addData(DataDictionary dataDictionary);
    public DataDictionary getDataDictionary(Integer dataId);
    public boolean editData(DataDictionary dataDictionary);
    public boolean deleteData(Integer dataId);
}
