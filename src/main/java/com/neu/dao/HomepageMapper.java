package com.neu.dao;

import com.neu.model.Homepage;

public interface HomepageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Homepage record);

    int insertSelective(Homepage record);

    Homepage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Homepage record);

    int updateByPrimaryKey(Homepage record);

    Homepage selectByRegisId(int regisId);
}