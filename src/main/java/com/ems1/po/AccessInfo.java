package com.ems1.po;

public class AccessInfo {
    private Integer accessId;

    private Integer accessPid;

    private String accessName;

    private String accessDesc;

    private String accessUrl;

    private Integer roleId;

    private String accessPname;

    private Boolean checked=false;

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public String getAccessPname() {
        return accessPname;
    }

    public void setAccessPname(String accessPname) {
        this.accessPname = accessPname;
    }

    public Integer getAccessId() {
        return accessId;
    }

    public void setAccessId(Integer accessId) {
        this.accessId = accessId;
    }

    public Integer getAccessPid() {
        return accessPid;
    }

    public void setAccessPid(Integer accessPid) {
        this.accessPid = accessPid;
    }

    public String getAccessName() {
        return accessName;
    }

    public void setAccessName(String accessName) {
        this.accessName = accessName;
    }

    public String getAccessDesc() {
        return accessDesc;
    }

    public void setAccessDesc(String accessDesc) {
        this.accessDesc = accessDesc;
    }

    public String getAccessUrl() {
        return accessUrl;
    }

    public void setAccessUrl(String accessUrl) {
        this.accessUrl = accessUrl;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}