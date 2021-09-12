package com.ems1.system.dto;

import java.util.List;
import java.util.Map;

public class ReportInfo {

    private List<Map> studentStatusList;

    public List<Map> getStudentStatusList() {

        return studentStatusList;
    }

    public void setStudentStatusList(List<Map> studentStatusList) {

        this.studentStatusList = studentStatusList;

    }

    @Override
    public String toString() {
        return "ReportInfo{" +
                "studentStatusList=" + studentStatusList +
                '}';
    }
}
