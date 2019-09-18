package com.neu.service.impl;

import com.neu.dao.InvoiceMapper;
import com.neu.model.Invoice;
import com.neu.service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Date;

@Service
public class InvoiceServiceImp implements InvoiceService {
    @Autowired
    InvoiceMapper invoiceMapper;


    @Override
    public long getLastKey() {
        return invoiceMapper.getLastKey();
    }

    @Override
    @Transactional
    public boolean insert(long invoice_num, String amount, int state, Date time, int regisId, String tollBy) {
        if(invoice_num == (getLastKey()+1)){
            invoiceMapper.insertSelective(new Invoice(null, new BigDecimal(amount), state, time, null, regisId, tollBy, null));
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean insert(Invoice invoice) {
        if(invoice.getInvoiceNum() == (getLastKey()+1)){
            invoiceMapper.insertSelective(invoice);
            return true;
        }else{
            return false;
        }
    }

//    private int tollByTrans(String tollBy){
//        if(tollBy.equals("现金"))
//            return 51;
//        if(tollBy.equals("医保卡"))
//            return 52;
//        if(tollBy.equals("银行卡"))
//            return 53;
//        if(tollBy.equals("信用卡"))
//            return 54;
//        if(tollBy.equals("微信"))
//            return 55;
//        if(tollBy.equals("支付宝"))
//            return 56;
//        if(tollBy.equals("云闪付"))
//            return 57;
//        return 58;
//    }
}
