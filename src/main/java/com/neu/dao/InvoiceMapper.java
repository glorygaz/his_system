package com.neu.dao;

import com.neu.model.Invoice;

public interface InvoiceMapper {
    int deleteByPrimaryKey(Long invoiceNum);

    int insert(Invoice record);

    int insertSelective(Invoice record);

    Invoice selectByPrimaryKey(Long invoiceNum);

    int updateByPrimaryKeySelective(Invoice record);

    int updateByPrimaryKey(Invoice record);

    long getLastKey();
}