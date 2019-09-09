package com.neu.dao;

import com.neu.model.Medicine;

public interface MedicineMapper {
    int deleteByPrimaryKey(Integer medicineId);

    int insert(Medicine record);

    int insertSelective(Medicine record);

    Medicine selectByPrimaryKey(Integer medicineId);

    int updateByPrimaryKeySelective(Medicine record);

    int updateByPrimaryKey(Medicine record);
}