package com.neu.service.impl;

import com.neu.dao.ExpenseDetailMapper;
import com.neu.model.ExpenseDetail;
import com.neu.service.ExpenseDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ExpenseDetailServiceImpl implements ExpenseDetailService {
    @Resource
    ExpenseDetailMapper expenseDetailMapper;

    @Override
    public void insertExpDetail(ExpenseDetail expenseDetail) {
        expenseDetailMapper.insertSelective(expenseDetail);
    }
}
