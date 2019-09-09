package com.neu.service;

import com.neu.model.Department;

import java.util.List;

public interface DeptService {

    List<String> getAllDeptName();

    Department selectByDeptName(String deptName);
}
