package com.ems1.system.service.impl;

import com.ems1.system.dto.ReportInfo;
import com.ems1.system.mapper.ReportMapper;
import com.ems1.system.service.ReportService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ReportServiceImpl implements ReportService {
    @Resource(name="reportMapper")
    private ReportMapper reportMapper;

    @Override
    public ReportInfo getReportInfo() {
        ReportInfo info=new ReportInfo();


        info.setStudentStatusList(reportMapper.getStudentStatusList());
//        for (Map m : info.getStudentStatusList()) {
//            for (Object entry : m.entrySet()) {
//                System.out.println("!!!!!"+entry);
//            }
//        }
        return info;
    }
}
