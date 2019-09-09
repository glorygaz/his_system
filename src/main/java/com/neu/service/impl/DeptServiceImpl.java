package com.neu.service.impl;

import com.neu.dao.DepartmentMapper;
import com.neu.model.Department;
import com.neu.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<String> getAllDeptName() {
        return departmentMapper.getAllDeptName();
    }

    @Override
    public Department selectByDeptName(String deptName) {
        return departmentMapper.selectByDeptName(deptName);
    }
}
