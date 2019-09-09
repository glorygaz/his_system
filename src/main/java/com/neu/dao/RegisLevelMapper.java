package com.neu.dao;

import com.neu.model.RegisLevel;

public interface RegisLevelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RegisLevel record);

    int insertSelective(RegisLevel record);

    RegisLevel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RegisLevel record);

    int updateByPrimaryKey(RegisLevel record);

    RegisLevel selectByName(String name);
}