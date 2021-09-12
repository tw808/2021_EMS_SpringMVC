package com.ems1.po;

import java.util.Date;

public class Email {
    private Integer emId;

    private Integer staffId;

    private String emTitle;

    private String emMsg;

    private Date emSendTime;

    private String emReceiver;

    private String emReceiverEm;

    private String emStatus;

    private String staffName;

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getEmId() {
        return emId;
    }

    public void setEmId(Integer emId) {
        this.emId = emId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getEmTitle() {
        return emTitle;
    }

    public void setEmTitle(String emTitle) {
        this.emTitle = emTitle;
    }

    public String getEmMsg() {
        return emMsg;
    }

    public void setEmMsg(String emMsg) {
        this.emMsg = emMsg;
    }

    public Date getEmSendTime() {
        return emSendTime;
    }

    public void setEmSendTime(Date emSendTime) {
        this.emSendTime = emSendTime;
    }

    public String getEmReceiver() {
        return emReceiver;
    }

    public void setEmReceiver(String emReceiver) {
        this.emReceiver = emReceiver;
    }

    public String getEmReceiverEm() {
        return emReceiverEm;
    }

    public void setEmReceiverEm(String emReceiverEm) {
        this.emReceiverEm = emReceiverEm;
    }

    public String getEmStatus() {
        return emStatus;
    }

    public void setEmStatus(String emStatus) {
        this.emStatus = emStatus;
    }

    @Override
    public String toString() {
        return "Email{" +
                "emId=" + emId +
                ", staffId=" + staffId +
                ", emTitle='" + emTitle + '\'' +
                ", emMsg='" + emMsg + '\'' +
                ", emSendTime=" + emSendTime +
                ", emReceiver='" + emReceiver + '\'' +
                ", emReceiverEm='" + emReceiverEm + '\'' +
                ", emStatus='" + emStatus + '\'' +
                '}';
    }
}