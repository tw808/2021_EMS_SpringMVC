package com.ems1.po;

public class ClassroomInform {
    private Integer classroomId;

    private String classroomName;

    private Integer classroomMax;

    private String classroomInfo;

    private String classroomRemark;
    private String classroomMark;

    public String getClassroomMark() {
        return classroomMark;
    }

    public void setClassroomMark(String classroomMark) {
        this.classroomMark = classroomMark;
    }

    public Integer getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(Integer classroomId) {
        this.classroomId = classroomId;
    }

    public String getClassroomName() {
        return classroomName;
    }

    public void setClassroomName(String classroomName) {
        this.classroomName = classroomName;
    }

    public Integer getClassroomMax() {
        return classroomMax;
    }

    public void setClassroomMax(Integer classroomMax) {
        this.classroomMax = classroomMax;
    }

    public String getClassroomInfo() {
        return classroomInfo;
    }

    public void setClassroomInfo(String classroomInfo) {
        this.classroomInfo = classroomInfo;
    }

    public String getClassroomRemark() {
        return classroomRemark;
    }

    public void setClassroomRemark(String classroomRemark) {
        this.classroomRemark = classroomRemark;
    }

    @Override
    public String toString() {
        return "ClassroomInform{" +
                "classroomId=" + classroomId +
                ", classroomName='" + classroomName + '\'' +
                ", classroomMax=" + classroomMax +
                ", classroomInfo='" + classroomInfo + '\'' +
                ", classroomRemark='" + classroomRemark + '\'' +
                ", classroomMark='" + classroomMark + '\'' +
                '}';
    }
}