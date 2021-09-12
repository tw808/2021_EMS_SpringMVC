package com.ems1.po;

import java.util.Date;

public class AuditionInfo {
    private Integer audId;

    private Integer stuId;

    private Date audTime;

    private String audAddr;

    private String audCourse;

    private String audDesc;
    private String stuName;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Integer getAudId() {
        return audId;
    }

    public void setAudId(Integer audId) {
        this.audId = audId;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Date getAudTime() {
        return audTime;
    }

    public void setAudTime(Date audTime) {
        this.audTime = audTime;
    }

    public String getAudAddr() {
        return audAddr;
    }

    public void setAudAddr(String audAddr) {
        this.audAddr = audAddr;
    }

    public String getAudCourse() {
        return audCourse;
    }

    public void setAudCourse(String audCourse) {
        this.audCourse = audCourse;
    }

    public String getAudDesc() {
        return audDesc;
    }

    public void setAudDesc(String audDesc) {
        this.audDesc = audDesc;
    }

    @Override
    public String toString() {
        return "AuditionInfo{" +
                "audId=" + audId +
                ", stuId=" + stuId +
                ", audTime=" + audTime +
                ", audAddr='" + audAddr + '\'' +
                ", audCourse='" + audCourse + '\'' +
                ", audDesc='" + audDesc + '\'' +
                ", stuName='" + stuName + '\'' +
                '}';
    }
}