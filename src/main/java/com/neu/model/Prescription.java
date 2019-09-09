package com.neu.model;

import java.util.Date;

public class Prescription {
    private Integer id;

    private Integer medRecId;

    private Integer regisId;

    private Integer docId;

    private String prescName;

    private Date createTime;

    private Integer state;

    public Prescription(Integer id, Integer medRecId, Integer regisId, Integer docId, String prescName, Date createTime, Integer state) {
        this.id = id;
        this.medRecId = medRecId;
        this.regisId = regisId;
        this.docId = docId;
        this.prescName = prescName;
        this.createTime = createTime;
        this.state = state;
    }

    public Prescription() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMedRecId() {
        return medRecId;
    }

    public void setMedRecId(Integer medRecId) {
        this.medRecId = medRecId;
    }

    public Integer getRegisId() {
        return regisId;
    }

    public void setRegisId(Integer regisId) {
        this.regisId = regisId;
    }

    public Integer getDocId() {
        return docId;
    }

    public void setDocId(Integer docId) {
        this.docId = docId;
    }

    public String getPrescName() {
        return prescName;
    }

    public void setPrescName(String prescName) {
        this.prescName = prescName == null ? null : prescName.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}