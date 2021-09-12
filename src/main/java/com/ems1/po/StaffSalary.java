package com.ems1.po;

import java.util.Date;

public class StaffSalary {
    private Integer staffSalId;

    private Integer staffId;

    private Integer staStaffId;

    private Double totalSal;

    private Double deductSal;

    private Double realSal;

    private String paid;

    private Date staffSalTime;

    private String staffSalRemark;

    private String staffName;

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    private String managerName;

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getStaffSalId() {
        return staffSalId;
    }

    public void setStaffSalId(Integer staffSalId) {
        this.staffSalId = staffSalId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getStaStaffId() {
        return staStaffId;
    }

    public void setStaStaffId(Integer staStaffId) {
        this.staStaffId = staStaffId;
    }

    public Double getTotalSal() {
        return totalSal;
    }

    public void setTotalSal(Double totalSal) {
        this.totalSal = totalSal;
    }

    public Double getDeductSal() {
        return deductSal;
    }

    public void setDeductSal(Double deductSal) {
        this.deductSal = deductSal;
    }

    public Double getRealSal() {
        return realSal;
    }

    public void setRealSal(Double realSal) {
        this.realSal = realSal;
    }

    public String getPaid() {
        return paid;
    }

    public void setPaid(String paid) {
        this.paid = paid;
    }

    public Date getStaffSalTime() {
        return staffSalTime;
    }

    public void setStaffSalTime(Date staffSalTime) {
        this.staffSalTime = staffSalTime;
    }

    public String getStaffSalRemark() {
        return staffSalRemark;
    }

    public void setStaffSalRemark(String staffSalRemark) {
        this.staffSalRemark = staffSalRemark;
    }

    @Override
    public String toString() {
        return "StaffSalary{" +
                "staffSalId=" + staffSalId +
                ", staffId=" + staffId +
                ", staStaffId=" + staStaffId +
                ", totalSal=" + totalSal +
                ", deductSal=" + deductSal +
                ", realSal=" + realSal +
                ", paid='" + paid + '\'' +
                ", staffSalTime=" + staffSalTime +
                ", staffSalRemark='" + staffSalRemark + '\'' +
                ", staffName='" + staffName + '\'' +
                ", managerName='" + managerName + '\'' +
                '}';
    }
}