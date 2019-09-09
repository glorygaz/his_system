package com.neu.dao;

import com.neu.model.SettlementCategory;

public interface SettlementCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SettlementCategory record);

    int insertSelective(SettlementCategory record);

    SettlementCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SettlementCategory record);

    int updateByPrimaryKey(SettlementCategory record);

    SettlementCategory selectByName(String name);
}