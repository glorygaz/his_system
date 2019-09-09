package com.neu.service;

import java.util.Date;

public interface InvoiceService {
    long getLastKey();
    boolean insert(long invoice_num, String amount, int state, Date time, int regisId, String tollBy);
}
