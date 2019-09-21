package com.neu.dto;

import java.math.BigDecimal;

public class DispensingInfo {
    private String name;
    private String idNum;
    private String address;
    private String medicineName;
    private BigDecimal price;
    private String spec;
    private String manufactor;
    private int num;
    private String prescName;
    private String openTime;
    private int prescItemId;

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

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public String getManufactor() {
        return manufactor;
    }

    public void setManufactor(String manufactor) {
        this.manufactor = manufactor;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getPrescName() {
        return prescName;
    }

    public void setPrescName(String prescName) {
        this.prescName = prescName;
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

    public DispensingInfo(String name, String idNum, String address, String medicineName, BigDecimal price, String spec, String manufactor, int num, String prescName, String openTime, int prescItemId) {
        this.name = name;
        this.idNum = idNum;
        this.address = address;
        this.medicineName = medicineName;
        this.price = price;
        this.spec = spec;
        this.manufactor = manufactor;
        this.num = num;
        this.prescName = prescName;
        this.openTime = openTime;
        this.prescItemId = prescItemId;
    }
}
