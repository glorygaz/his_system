package com.neu.dao;

import com.neu.model.Department;

import java.util.List;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);

    List<String> getAllDeptName();

    Department selectByDeptName(String deptName);
}