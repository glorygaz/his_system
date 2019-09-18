package com.neu.dao;

import com.neu.model.Prescription;

import java.util.List;

public interface PrescriptionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Prescription record);

    int insertSelective(Prescription record);

    Prescription selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Prescription record);

    int updateByPrimaryKey(Prescription record);

    int getLastKey();

    List<Prescription> selectByRegisId(Integer regisId);

    List<Prescription> selectByMedRecId(Integer medRecId);
}