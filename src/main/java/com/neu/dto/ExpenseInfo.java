package com.neu.dto;

import java.math.BigDecimal;

public class ExpenseInfo {
    private int medRecId;
    private String name;
    private String idNum;
    private String address;
    private int regisId;
    private int itemId;
    private String itemName;
    private BigDecimal price;
    private int num;
    private String openTime;
    private int prescItemId;

    public ExpenseInfo(int medRecId, String name, String idNum, String address, int regisId, int itemId, String itemName, BigDecimal price, int num, String openTime, int prescItemId) {
        this.medRecId = medRecId;
        this.name = name;
        this.idNum = idNum;
        this.address = address;
        this.regisId = regisId;
        this.itemId = itemId;
        this.itemName = itemName;
        this.price = price;
        this.num = num;
        this.openTime = openTime;
        this.prescItemId = prescItemId;
    }

    public int getMedRecId() {
        return medRecId;
    }

    public void setMedRecId(int medRecId) {
        this.medRecId = medRecId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdNum() {
        return idNum;
    }

    public void setIdNum(String idNum) {
        this.idNum = idNum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRegisId() {
        return regisId;
    }

    public void setRegisId(int regisId) {
        this.regisId = regisId;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getOpenTime() {
        return openTime;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public int getPrescItemId() {
        return prescItemId;
    }

    public void setPrescItemId(int prescItemId) {
        this.prescItemId = prescItemId;
    }
}
