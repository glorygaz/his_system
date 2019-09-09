package com.neu.dao;

import com.neu.model.Fmeditem;

public interface FmeditemMapper {
    int deleteByPrimaryKey(Integer itemId);

    int insert(Fmeditem record);

    int insertSelective(Fmeditem record);

    Fmeditem selectByPrimaryKey(Integer itemId);

    int updateByPrimaryKeySelective(Fmeditem record);

    int updateByPrimaryKey(Fmeditem record);
}