package com.ems1.po;

import java.util.Date;

public class TrackRecInfo {
    private Integer trackRecId;

    private Integer stuId;

    private String trackRecTitle;

    private String trackRecContent;

    private Date trackRecTime;

    private Integer trackRecEnroll;

    private Date nextRecTime;

    private String staffName;

    private String stuName;

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

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Integer getTrackRecId() {
        return trackRecId;
    }

    public void setTrackRecId(Integer trackRecId) {
        this.trackRecId = trackRecId;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getTrackRecTitle() {
        return trackRecTitle;
    }

    public void setTrackRecTitle(String trackRecTitle) {
        this.trackRecTitle = trackRecTitle;
    }

    public String getTrackRecContent() {
        return trackRecContent;
    }

    public void setTrackRecContent(String trackRecContent) {
        this.trackRecContent = trackRecContent;
    }

    public Date getTrackRecTime() {
        return trackRecTime;
    }

    public void setTrackRecTime(Date trackRecTime) {
        this.trackRecTime = trackRecTime;
    }

    public Integer getTrackRecEnroll() {
        return trackRecEnroll;
    }

    public void setTrackRecEnroll(Integer trackRecEnroll) {
        this.trackRecEnroll = trackRecEnroll;
    }

    public Date getNextRecTime() {
        return nextRecTime;
    }

    public void setNextRecTime(Date nextRecTime) {
        this.nextRecTime = nextRecTime;
    }

    @Override
    public String toString() {
        return "TrackRecInfo{" +
                "trackRecId=" + trackRecId +
                ", stuId=" + stuId +
                ", trackRecTitle='" + trackRecTitle + '\'' +
                ", trackRecContent='" + trackRecContent + '\'' +
                ", trackRecTime=" + trackRecTime +
                ", trackRecEnroll=" + trackRecEnroll +
                ", nextRecTime=" + nextRecTime +
                ", staffName='" + staffName + '\'' +
                ", stuName='" + stuName + '\'' +
                ", dataInfo='" + dataInfo + '\'' +
                '}';
    }
}