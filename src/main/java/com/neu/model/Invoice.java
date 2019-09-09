package com.neu.model;

import java.math.BigDecimal;
import java.util.Date;

public class Invoice {
    private Long invoiceNum;

    private BigDecimal amount;

    private Integer state;

    private Date time;

    private Integer manuId;

    private Integer regisId;

    private String tollBy;

    private Byte isRedDash;

    public Invoice(Long invoiceNum, BigDecimal amount, Integer state, Date time, Integer manuId, Integer regisId, String tollBy, Byte isRedDash) {
        this.invoiceNum = invoiceNum;
        this.amount = amount;
        this.state = state;
        this.time = time;
        this.manuId = manuId;
        this.regisId = regisId;
        this.tollBy = tollBy;
        this.isRedDash = isRedDash;
    }

    public Invoice() {
        super();
    }

    public Long getInvoiceNum() {
        return invoiceNum;
    }

    public void setInvoiceNum(Long invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getManuId() {
        return manuId;
    }

    public void setManuId(Integer manuId) {
        this.manuId = manuId;
    }

    public Integer getRegisId() {
        return regisId;
    }

    public void setRegisId(Integer regisId) {
        this.regisId = regisId;
    }

    public String getTollBy() {
        return tollBy;
    }

    public void setTollBy(String tollBy) {
        this.tollBy = tollBy == null ? null : tollBy.trim();
    }

    public Byte getIsRedDash() {
        return isRedDash;
    }

    public void setIsRedDash(Byte isRedDash) {
        this.isRedDash = isRedDash;
    }
}