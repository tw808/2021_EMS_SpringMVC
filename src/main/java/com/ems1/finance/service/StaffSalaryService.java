package com.ems1.finance.service;

import com.ems1.po.StaffSalary;

import java.util.List;

public interface StaffSalaryService {
    StaffSalary getSalary(Integer staffSalId);

    boolean updateSalary(StaffSalary salary);

    boolean deleteSalary(StaffSalary salary);

    boolean addSalary(StaffSalary salary);

    List<StaffSalary> getSalaryList(StaffSalary salary);
}
