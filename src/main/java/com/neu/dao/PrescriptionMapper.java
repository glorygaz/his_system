package com.neu.dao;

import com.neu.model.Prescription;

public interface PrescriptionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Prescription record);

    int insertSelective(Prescription record);

    Prescription selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Prescription record);

    int updateByPrimaryKey(Prescription record);
}