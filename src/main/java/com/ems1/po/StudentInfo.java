package com.ems1.po;

import java.util.Date;

public class StudentInfo {
    private Integer stuId;

    private Integer staffId;

    private Integer classId;

    private String stuName;

    private String stuSex;

    private Integer stuAge;

    private String stuPhone;

    private String stuEmail;

    private String stuIdNum;

    private String stuAddress;

    private Date stuBday;

    private String stuSchool;

    private String stuIm;

    private String stuParent;

    private String stuParentPhone;

    private String stuProvince;

    private String stuCity;

    private String stuEngine;

    private String stuPaid;

    private Integer stuStatus;
//-1 null, 0 unsorted, 1 sorted, 2 registered
    private String stuMark;

    private String stuDesc;

    private String stuNum;

    private String stuPwd;

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    public Integer getStuAge() {
        return stuAge;
    }

    public void setStuAge(Integer stuAge) {
        this.stuAge = stuAge;
    }

    public String getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(String stuPhone) {
        this.stuPhone = stuPhone;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    public String getStuIdNum() {
        return stuIdNum;
    }

    public void setStuIdNum(String stuIdNum) {
        this.stuIdNum = stuIdNum;
    }

    public String getStuAddress() {
        return stuAddress;
    }

    public void setStuAddress(String stuAddress) {
        this.stuAddress = stuAddress;
    }

    public Date getStuBday() {
        return stuBday;
    }

    public void setStuBday(Date stuBday) {
        this.stuBday = stuBday;
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool;
    }

    public String getStuIm() {
        return stuIm;
    }

    public void setStuIm(String stuIm) {
        this.stuIm = stuIm;
    }

    public String getStuParent() {
        return stuParent;
    }

    public void setStuParent(String stuParent) {
        this.stuParent = stuParent;
    }

    public String getStuParentPhone() {
        return stuParentPhone;
    }

    public void setStuParentPhone(String stuParentPhone) {
        this.stuParentPhone = stuParentPhone;
    }

    public String getStuProvince() {
        return stuProvince;
    }

    public void setStuProvince(String stuProvince) {
        this.stuProvince = stuProvince;
    }

    public String getStuCity() {
        return stuCity;
    }

    public void setStuCity(String stuCity) {
        this.stuCity = stuCity;
    }

    public String getStuEngine() {
        return stuEngine;
    }

    public void setStuEngine(String stuEngine) {
        this.stuEngine = stuEngine;
    }

    public String getStuPaid() {
        return stuPaid;
    }

    public void setStuPaid(String stuPaid) {
        this.stuPaid = stuPaid;
    }

    public Integer getStuStatus() {
        return stuStatus;
    }

    public void setStuStatus(Integer stuStatus) {
        this.stuStatus = stuStatus;
    }

    public String getStuMark() {
        return stuMark;
    }

    public void setStuMark(String stuMark) {
        this.stuMark = stuMark;
    }

    public String getStuDesc() {
        return stuDesc;
    }

    public void setStuDesc(String stuDesc) {
        this.stuDesc = stuDesc;
    }

    public String getStuNum() {
        return stuNum;
    }

    public void setStuNum(String stuNum) {
        this.stuNum = stuNum;
    }

    public String getStuPwd() {
        return stuPwd;
    }

    public void setStuPwd(String stuPwd) {
        this.stuPwd = stuPwd;
    }

    @Override
    public String toString() {
        return "StudentInfo{" +
                "stuId=" + stuId +
                ", staffId=" + staffId +
                ", classId=" + classId +
                ", stuName='" + stuName + '\'' +
                ", stuSex='" + stuSex + '\'' +
                ", stuAge=" + stuAge +
                ", stuPhone='" + stuPhone + '\'' +
                ", stuEmail='" + stuEmail + '\'' +
                ", stuIdNum='" + stuIdNum + '\'' +
                ", stuAddress='" + stuAddress + '\'' +
                ", stuBday='" + stuBday +
                ", stuSchool='" + stuSchool + '\'' +
                ", stuIm='" + stuIm + '\'' +
                ", stuParent='" + stuParent + '\'' +
                ", stuParentPhone='" + stuParentPhone + '\'' +
                ", stuProvince='" + stuProvince + '\'' +
                ", stuCity='" + stuCity + '\'' +
                ", stuEngine='" + stuEngine + '\'' +
                ", stuPaid='" + stuPaid + '\'' +
                ", stuStatus=" + stuStatus +
                ", stuMark='" + stuMark + '\'' +
                ", stuDesc='" + stuDesc + '\'' +
                ", stuNum='" + stuNum + '\'' +
                ", stuPwd='" + stuPwd + '\'' +
                '}';
    }
}