package com.ems1.po;

import java.util.Date;
//entity class Model
public class StaffInfo {
    private Integer staffId;

    private Integer roleId;

    private String staffName;

    private String staffSex;

    private Integer staffAge;

    private String staffCountry;

    private String staffIdNum;

    private Date staffBday;

    private String staffPhone;

    private String staffCell;

    private String staffEmail;

    private String staffAddress;

    private String staffIm;

    private Date staffStart;

    private String staffEdu;

    private String staffAbout;

    private String staffStatus;

    private String userNum;

    private String userPwd;

    private String roleName;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(String staffSex) {
        this.staffSex = staffSex;
    }

    public Integer getStaffAge() {
        return staffAge;
    }

    public void setStaffAge(Integer staffAge) {
        this.staffAge = staffAge;
    }

    public String getStaffCountry() {
        return staffCountry;
    }

    public void setStaffCountry(String staffCountry) {
        this.staffCountry = staffCountry;
    }

    public String getStaffIdNum() {
        return staffIdNum;
    }

    public void setStaffIdNum(String staffIdNum) {
        this.staffIdNum = staffIdNum;
    }

    public Date getStaffBday() {
        return staffBday;
    }

    public void setStaffBday(Date staffBday) {
        this.staffBday = staffBday;
    }

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone;
    }

    public String getStaffCell() {
        return staffCell;
    }

    public void setStaffCell(String staffCell) {
        this.staffCell = staffCell;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public String getStaffIm() {
        return staffIm;
    }

    public void setStaffIm(String staffIm) {
        this.staffIm = staffIm;
    }

    public Date getStaffStart() {
        return staffStart;
    }

    public void setStaffStart(Date staffStart) {
        this.staffStart = staffStart;
    }

    public String getStaffEdu() {
        return staffEdu;
    }

    public void setStaffEdu(String staffEdu) {
        this.staffEdu = staffEdu;
    }

    public String getStaffAbout() {
        return staffAbout;
    }

    public void setStaffAbout(String staffAbout) {
        this.staffAbout = staffAbout;
    }

    public String getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(String staffStatus) {
        this.staffStatus = staffStatus;
    }

    public String getUserNum() {
        return userNum;
    }

    public void setUserNum(String userNum) {
        this.userNum = userNum;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    @Override
    public String toString() {
        return "StaffInfo{" +
                "staffId=" + staffId +
                ", roleId=" + roleId +
                ", staffName='" + staffName + '\'' +
                ", staffSex='" + staffSex + '\'' +
                ", staffAge=" + staffAge +
                ", staffCountry='" + staffCountry + '\'' +
                ", staffIdNum='" + staffIdNum + '\'' +
                ", staffBday=" + staffBday +
                ", staffPhone='" + staffPhone + '\'' +
                ", staffCell='" + staffCell + '\'' +
                ", staffEmail='" + staffEmail + '\'' +
                ", staffAddress='" + staffAddress + '\'' +
                ", staffIm='" + staffIm + '\'' +
                ", staffStart=" + staffStart +
                ", staffEdu='" + staffEdu + '\'' +
                ", staffAbout='" + staffAbout + '\'' +
                ", staffStatus='" + staffStatus + '\'' +
                ", userNum='" + userNum + '\'' +
                ", userPwd='" + userPwd + '\'' +
                '}';
    }
}