package com.neu.dao;

import com.neu.model.PrescriptionItem;

import java.util.List;

public interface PrescriptionItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PrescriptionItem record);

    int insertSelective(PrescriptionItem record);

    PrescriptionItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PrescriptionItem record);

    int updateByPrimaryKey(PrescriptionItem record);

    List<PrescriptionItem> selectByPrescId(Integer prescId);
}