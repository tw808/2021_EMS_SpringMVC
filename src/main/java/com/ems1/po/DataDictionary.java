package com.ems1.po;

public class DataDictionary {
    private Integer dataId;

    private String dataInfo;

    private String dataEngine;

    private String dataDiscr;

    public Integer getDataId() {
        return dataId;
    }

    public void setDataId(Integer dataId) {
        this.dataId = dataId;
    }

    public String getDataInfo() {
        return dataInfo;
    }

    public void setDataInfo(String dataInfo) {
        this.dataInfo = dataInfo;
    }

    public String getDataEngine() {
        return dataEngine;
    }

    public void setDataEngine(String dataEngine) {
        this.dataEngine = dataEngine;
    }

    public String getDataDiscr() {
        return dataDiscr;
    }

    public void setDataDiscr(String dataDiscr) {
        this.dataDiscr = dataDiscr;
    }

    @Override
    public String toString() {
        return "DataDictionary{" +
                "dataId=" + dataId +
                ", dataInfo='" + dataInfo + '\'' +
                ", dataEngine='" + dataEngine + '\'' +
                ", dataDiscr='" + dataDiscr + '\'' +
                '}';
    }
}
