package com.neu.dao;

import com.neu.model.ExpenseDetail;

public interface ExpenseDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ExpenseDetail record);

    int insertSelective(ExpenseDetail record);

    ExpenseDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ExpenseDetail record);

    int updateByPrimaryKey(ExpenseDetail record);
}