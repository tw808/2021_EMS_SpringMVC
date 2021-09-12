package com.ems1.po;

import java.util.Date;

public class MarketingActivities {
    private Integer actId;

    private Integer staffId;

    private String actName;

    private Integer actStatus;

    private Date actStart;

    private Date actEnd;

    private Integer actType;

    private Double actQuote;

    private Double actCost;

    private String actReact;

    private String actMem;

    private String actDesc;

    private String staffName;

    private String dataInfo;

    public String getDataInfo() {
        return dataInfo;
    }

    public void setDataInfo(String dataInfo) {
        this.dataInfo = dataInfo;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getActId() {
        return actId;
    }

    public void setActId(Integer actId) {
        this.actId = actId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }

    public Integer getActStatus() {
        return actStatus;
    }

    public void setActStatus(Integer actStatus) {
        this.actStatus = actStatus;
    }

    public Date getActStart() {
        return actStart;
    }

    public void setActStart(Date actStart) {
        this.actStart = actStart;
    }

    public Date getActEnd() {
        return actEnd;
    }

    public void setActEnd(Date actEnd) {
        this.actEnd = actEnd;
    }

    public Integer getActType() {
        return actType;
    }

    public void setActType(Integer actType) {
        this.actType = actType;
    }

    public Double getActQuote() {
        return actQuote;
    }

    public void setActQuote(Double actQuote) {
        this.actQuote = actQuote;
    }

    public Double getActCost() {
        return actCost;
    }

    public void setActCost(Double actCost) {
        this.actCost = actCost;
    }

    public String getActReact() {
        return actReact;
    }

    public void setActReact(String actReact) {
        this.actReact = actReact;
    }

    public String getActMem() {
        return actMem;
    }

    public void setActMem(String actMem) {
        this.actMem = actMem;
    }

    public String getActDesc() {
        return actDesc;
    }

    public void setActDesc(String actDesc) {
        this.actDesc = actDesc;
    }

    @Override
    public String toString() {
        return "MarketingActivities{" +
                "actId=" + actId +
                ", staffId=" + staffId +
                ", actName='" + actName + '\'' +
                ", actStatus=" + actStatus +
                ", actStart=" + actStart +
                ", actEnd=" + actEnd +
                ", actType=" + actType +
                ", actQuote=" + actQuote +
                ", actCost=" + actCost +
                ", actReact='" + actReact + '\'' +
                ", actMem='" + actMem + '\'' +
                ", actDesc='" + actDesc + '\'' +
                ", staffName='" + staffName + '\'' +
                ", dataInfo='" + dataInfo + '\'' +
                '}';
    }
}