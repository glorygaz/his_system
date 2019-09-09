package com.neu.dao;

import com.neu.model.PrescriptionItem;

public interface PrescriptionItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PrescriptionItem record);

    int insertSelective(PrescriptionItem record);

    PrescriptionItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PrescriptionItem record);

    int updateByPrimaryKey(PrescriptionItem record);
}