package com.ems1.finance.service.impl;

import com.ems1.finance.mapper.StaffSalaryMapper;
import com.ems1.finance.service.StaffSalaryService;
import com.ems1.po.StaffSalary;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StaffSalaryServiceImpl implements StaffSalaryService {
    @Resource(name = "staffSalaryMapper")
    StaffSalaryMapper staffSalaryMapper;
    
    @Override
    public StaffSalary getSalary(Integer staffSalId) {
        return staffSalaryMapper.selectByPrimaryKey(staffSalId);
    }

    @Override
    public boolean updateSalary(StaffSalary salary) {
        try {
            int i = staffSalaryMapper.updateByPrimaryKeySelective(salary);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean deleteSalary(StaffSalary salary) {
        try {
            int i = staffSalaryMapper.deleteByPrimaryKey(salary.getStaffSalId());
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public boolean addSalary(StaffSalary salary) {
        try {
            int count = staffSalaryMapper.insert(salary);
            if (count > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;    }

    @Override
    public List<StaffSalary> getSalaryList(StaffSalary salary) {
        return staffSalaryMapper.getSalaryList(salary);
    }
}
