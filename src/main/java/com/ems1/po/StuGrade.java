package com.ems1.po;

import java.util.Date;

public class StuGrade {
    private Integer stuGradeId;

    private Integer stuId;

    private Integer staffId;

    private String stuGradeSub;

    private String stuGrade;

    private Date stuGradeTime;

    private String stuGradeNote;

    private String stuName;
    private String staffName;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getStuGradeId() {
        return stuGradeId;
    }

    public void setStuGradeId(Integer stuGradeId) {
        this.stuGradeId = stuGradeId;
    }

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

    public String getStuGradeSub() {
        return stuGradeSub;
    }

    public void setStuGradeSub(String stuGradeSub) {
        this.stuGradeSub = stuGradeSub;
    }

    public String getStuGrade() {
        return stuGrade;
    }

    public void setStuGrade(String stuGrade) {
        this.stuGrade = stuGrade;
    }

    public Date getStuGradeTime() {
        return stuGradeTime;
    }

    public void setStuGradeTime(Date stuGradeTime) {
        this.stuGradeTime = stuGradeTime;
    }

    public String getStuGradeNote() {
        return stuGradeNote;
    }

    public void setStuGradeNote(String stuGradeNote) {
        this.stuGradeNote = stuGradeNote;
    }
}