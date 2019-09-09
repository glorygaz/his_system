package com.neu.model;

import java.util.Date;

public class Registration {
    private Integer id;

    private Integer medicalRecordId;

    private Date regisDate;

    private String noonDistinction;

    private Integer deptId;

    private Integer docId;

    private Integer regisLevelId;

    private Integer settlementCategoryId;

    private Boolean isMedicalBook;

    private Date regisTime;

    private Integer regisState;

    public Registration(Integer id, Integer medicalRecordId, Date regisDate, String noonDistinction, Integer deptId, Integer docId, Integer regisLevelId, Integer settlementCategoryId, Boolean isMedicalBook, Date regisTime, Integer regisState) {
        this.id = id;
        this.medicalRecordId = medicalRecordId;
        this.regisDate = regisDate;
        this.noonDistinction = noonDistinction;
        this.deptId = deptId;
        this.docId = docId;
        this.regisLevelId = regisLevelId;
        this.settlementCategoryId = settlementCategoryId;
        this.isMedicalBook = isMedicalBook;
        this.regisTime = regisTime;
        this.regisState = regisState;
    }

    public Registration() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMedicalRecordId() {
        return medicalRecordId;
    }

    public void setMedicalRecordId(Integer medicalRecordId) {
        this.medicalRecordId = medicalRecordId;
    }

    public Date getRegisDate() {
        return regisDate;
    }

    public void setRegisDate(Date regisDate) {
        this.regisDate = regisDate;
    }

    public String getNoonDistinction() {
        return noonDistinction;
    }

    public void setNoonDistinction(String noonDistinction) {
        this.noonDistinction = noonDistinction == null ? null : noonDistinction.trim();
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getDocId() {
        return docId;
    }

    public void setDocId(Integer docId) {
        this.docId = docId;
    }

    public Integer getRegisLevelId() {
        return regisLevelId;
    }

    public void setRegisLevelId(Integer regisLevelId) {
        this.regisLevelId = regisLevelId;
    }

    public Integer getSettlementCategoryId() {
        return settlementCategoryId;
    }

    public void setSettlementCategoryId(Integer settlementCategoryId) {
        this.settlementCategoryId = settlementCategoryId;
    }

    public Boolean getIsMedicalBook() {
        return isMedicalBook;
    }

    public void setIsMedicalBook(Boolean isMedicalBook) {
        this.isMedicalBook = isMedicalBook;
    }

    public Date getRegisTime() {
        return regisTime;
    }

    public void setRegisTime(Date regisTime) {
        this.regisTime = regisTime;
    }

    public Integer getRegisState() {
        return regisState;
    }

    public void setRegisState(Integer regisState) {
        this.regisState = regisState;
    }
}