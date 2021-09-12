package com.ems1.po;

import java.util.Date;

public class EvaluationInfo {
    private Integer evalId;

    private Integer stuId;

    private String evalTitle;

    private String evalContent;

    private String evalCourse;

    private String evalTeacher;

    private Date evalTime;

    private String stuName;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Integer getEvalId() {
        return evalId;
    }

    public void setEvalId(Integer evalId) {
        this.evalId = evalId;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getEvalTitle() {
        return evalTitle;
    }

    public void setEvalTitle(String evalTitle) {
        this.evalTitle = evalTitle;
    }

    public String getEvalContent() {
        return evalContent;
    }

    public void setEvalContent(String evalContent) {
        this.evalContent = evalContent;
    }

    public String getEvalCourse() {
        return evalCourse;
    }

    public void setEvalCourse(String evalCourse) {
        this.evalCourse = evalCourse;
    }

    public String getEvalTeacher() {
        return evalTeacher;
    }

    public void setEvalTeacher(String evalTeacher) {
        this.evalTeacher = evalTeacher;
    }

    public Date getEvalTime() {
        return evalTime;
    }

    public void setEvalTime(Date evalTime) {
        this.evalTime = evalTime;
    }
}