package com.ems1.po;

import java.util.Date;

public class ClassInfo {
    private Integer classId;

    private Integer discId;

    private Integer syllId;

    private Integer classroomId;

    private Integer staffId;

    private String className;

    private Integer classNum;

    private Date classStart;

    private Date classEnd;

    private String classEffective;

    private String classStatus;

    private String classDesc;

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Integer getDiscId() {
        return discId;
    }

    public void setDiscId(Integer discId) {
        this.discId = discId;
    }

    public Integer getSyllId() {
        return syllId;
    }

    public void setSyllId(Integer syllId) {
        this.syllId = syllId;
    }

    public Integer getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(Integer classroomId) {
        this.classroomId = classroomId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public Integer getClassNum() {
        return classNum;
    }

    public void setClassNum(Integer classNum) {
        this.classNum = classNum;
    }

    public Date getClassStart() {
        return classStart;
    }

    public void setClassStart(Date classStart) {
        this.classStart = classStart;
    }

    public Date getClassEnd() {
        return classEnd;
    }

    public void setClassEnd(Date classEnd) {
        this.classEnd = classEnd;
    }

    public String getClassEffective() {
        return classEffective;
    }

    public void setClassEffective(String classEffective) {
        this.classEffective = classEffective;
    }

    public String getClassStatus() {
        return classStatus;
    }

    public void setClassStatus(String classStatus) {
        this.classStatus = classStatus;
    }

    public String getClassDesc() {
        return classDesc;
    }

    public void setClassDesc(String classDesc) {
        this.classDesc = classDesc;
    }
}