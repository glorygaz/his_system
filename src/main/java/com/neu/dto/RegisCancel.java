package com.neu.dto;

public class RegisCancel {
    private int medReId;
    private String name;
    private String idNum;
    private String address;
    private int regisId;
    private String regisLe;
    private String regisDoc;
    private String regisTime;
    private String regisNoon;
    private String dept;
    private String regisState;

    public RegisCancel() {
    }

    public RegisCancel(int medReId, String name, String idNum, String address, int regisId, String regisLe, String regisDoc, String regisTime, String regisNoon, String dept, String regisState) {
        this.medReId = medReId;
        this.name = name;
        this.idNum = idNum;
        this.address = address;
        this.regisId = regisId;
        this.regisLe = regisLe;
        this.regisDoc = regisDoc;
        this.regisTime = regisTime;
        this.regisNoon = regisNoon;
        this.dept = dept;
        this.regisState = regisState;
    }

    public int getMedReId() {
        return medReId;
    }

    public void setMedReId(int medReId) {
        this.medReId = medReId;
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

    public String getRegisLe() {
        return regisLe;
    }

    public void setRegisLe(String regisLe) {
        this.regisLe = regisLe;
    }

    public String getRegisDoc() {
        return regisDoc;
    }

    public void setRegisDoc(String regisDoc) {
        this.regisDoc = regisDoc;
    }

    public String getRegisTime() {
        return regisTime;
    }

    public void setRegisTime(String regisTime) {
        this.regisTime = regisTime;
    }

    public String getRegisNoon() {
        return regisNoon;
    }

    public void setRegisNoon(String regisNoon) {
        this.regisNoon = regisNoon;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getRegisState() {
        return regisState;
    }

    public void setRegisState(String regisState) {
        this.regisState = regisState;
    }
}
