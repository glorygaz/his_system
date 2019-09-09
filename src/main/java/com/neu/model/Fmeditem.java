package com.neu.model;

import java.math.BigDecimal;

public class Fmeditem {
    private Integer itemId;

    private String itemCode;

    private String itemName;

    private Integer itemType;

    private String format;

    private BigDecimal price;

    private Integer expClassId;

    private Integer deptId;

    private String mnemonicCode;

    private Integer recordType;

    public Fmeditem(Integer itemId, String itemCode, String itemName, Integer itemType, String format, BigDecimal price, Integer expClassId, Integer deptId, String mnemonicCode, Integer recordType) {
        this.itemId = itemId;
        this.itemCode = itemCode;
        this.itemName = itemName;
        this.itemType = itemType;
        this.format = format;
        this.price = price;
        this.expClassId = expClassId;
        this.deptId = deptId;
        this.mnemonicCode = mnemonicCode;
        this.recordType = recordType;
    }

    public Fmeditem() {
        super();
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode == null ? null : itemCode.trim();
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public Integer getItemType() {
        return itemType;
    }

    public void setItemType(Integer itemType) {
        this.itemType = itemType;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format == null ? null : format.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getExpClassId() {
        return expClassId;
    }

    public void setExpClassId(Integer expClassId) {
        this.expClassId = expClassId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getMnemonicCode() {
        return mnemonicCode;
    }

    public void setMnemonicCode(String mnemonicCode) {
        this.mnemonicCode = mnemonicCode == null ? null : mnemonicCode.trim();
    }

    public Integer getRecordType() {
        return recordType;
    }

    public void setRecordType(Integer recordType) {
        this.recordType = recordType;
    }
}