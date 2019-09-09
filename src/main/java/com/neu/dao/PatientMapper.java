package com.neu.dao;

import com.neu.model.Patient;
import org.apache.ibatis.annotations.Param;

public interface PatientMapper {
    int deleteByPrimaryKey(Integer medicalRecordId);

    int insert(Patient record);

    int insertSelective(Patient record);

    Patient selectByPrimaryKey(Integer medicalRecordId);

    int updateByPrimaryKeySelective(Patient record);

    int updateByPrimaryKey(Patient record);

    int getLastKey();

    Patient selectByIdAndIdnum(@Param(value = "medicalRecordId") int medRecId ,@Param(value = "idnum") String idNum);
}