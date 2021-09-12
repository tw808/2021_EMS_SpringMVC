package com.ems1.system.dto;

import com.ems1.po.AccessInfo;

import java.util.List;

public class AccessDTO {
    //level 1 menu
    private AccessInfo acc;
    //multiple child menus
    private List<AccessInfo> list;

    public AccessInfo getAcc() {
        return acc;
    }

    public void setAcc(AccessInfo acc) {
        this.acc = acc;
    }

    public List<AccessInfo> getList() {
        return list;
    }

    public void setList(List<AccessInfo> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "AccessDTO{" +
                "acc=" + acc +
                ", list=" + list +
                '}';
    }
}
