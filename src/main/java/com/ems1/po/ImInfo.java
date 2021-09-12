package com.ems1.po;

import java.util.Date;

public class ImInfo {
    private Integer imId;

    private Integer staffId;

    private String imSender;

    private String imContent;

    private String imReceiver;

    private Integer imReceiverCell;

    private Date imSendTime;

    private String imSendStatus;

    private String staffName;

    public String getStaffName() {
        return staffName;
    }


    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getImId() {
        return imId;
    }

    public void setImId(Integer imId) {
        this.imId = imId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getImSender() {
        return imSender;
    }

    public void setImSender(String imSender) {
        this.imSender = imSender;
    }

    public String getImContent() {
        return imContent;
    }

    public void setImContent(String imContent) {
        this.imContent = imContent;
    }

    public String getImReceiver() {
        return imReceiver;
    }

    public void setImReceiver(String imReceiver) {
        this.imReceiver = imReceiver;
    }

    public Integer getImReceiverCell() {
        return imReceiverCell;
    }

    public void setImReceiverCell(Integer imReceiverCell) {
        this.imReceiverCell = imReceiverCell;
    }

    public Date getImSendTime() {
        return imSendTime;
    }

    public void setImSendTime(Date imSendTime) {
        this.imSendTime = imSendTime;
    }

    public String getImSendStatus() {
        return imSendStatus;
    }

    public void setImSendStatus(String imSendStatus) {
        this.imSendStatus = imSendStatus;
    }

    @Override
    public String toString() {
        return "ImInfo{" +
                "imId=" + imId +
                ", staffId=" + staffId +
                ", imSender=" + imSender +
                ", imContent='" + imContent + '\'' +
                ", imReceiver='" + imReceiver + '\'' +
                ", imReceiverCell=" + imReceiverCell +
                ", imSendTime=" + imSendTime +
                ", imSendStatus='" + imSendStatus + '\'' +
                ", staffName='" + staffName + '\'' +
                '}';
    }
}