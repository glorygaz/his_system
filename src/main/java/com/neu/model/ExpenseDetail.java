package com.neu.model;

import java.math.BigDecimal;
import java.util.Date;

public class ExpenseDetail {
    private Integer id;

    private Integer regisId;

    private Long invoiceId;

    private Integer itemId;

    private Boolean itemType;

    private String itemName;

    private BigDecimal itemPrice;

    private Integer num;

    private Date payTime;

    private Integer manuId;

    private String tollBy;

    public ExpenseDetail(Integer id, Integer regisId, Long invoiceId, Integer itemId, Boolean itemType, String itemName, BigDecimal itemPrice, Integer num, Date payTime, Integer manuId, String tollBy) {
        this.id = id;
        this.regisId = regisId;
        this.invoiceId = invoiceId;
        this.itemId = itemId;
        this.itemType = itemType;
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.num = num;
        this.payTime = payTime;
        this.manuId = manuId;
        this.tollBy = tollBy;
    }

    public ExpenseDetail() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRegisId() {
        return regisId;
    }

    public void setRegisId(Integer regisId) {
        this.regisId = regisId;
    }

    public Long getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(Long invoiceId) {
        this.invoiceId = invoiceId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Boolean getItemType() {
        return itemType;
    }

    public void setItemType(Boolean itemType) {
        this.itemType = itemType;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public BigDecimal getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(BigDecimal itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Integer getManuId() {
        return manuId;
    }

    public void setManuId(Integer manuId) {
        this.manuId = manuId;
    }

    public String getTollBy() {
        return tollBy;
    }

    public void setTollBy(String tollBy) {
        this.tollBy = tollBy == null ? null : tollBy.trim();
    }
}