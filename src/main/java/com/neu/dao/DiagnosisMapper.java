package com.neu.dao;

import com.neu.model.Diagnosis;

public interface DiagnosisMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Diagnosis record);

    int insertSelective(Diagnosis record);

    Diagnosis selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Diagnosis record);

    int updateByPrimaryKey(Diagnosis record);
}