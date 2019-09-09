package com.neu.model;

import java.util.Date;

public class Diagnosis {
    private Integer id;

    private Integer medRecId;

    private Integer regisId;

    private Integer diseaseId;

    private Boolean diagnosisType;

    private Date illDate;

    private Boolean diagnosisState;

    public Diagnosis(Integer id, Integer medRecId, Integer regisId, Integer diseaseId, Boolean diagnosisType, Date illDate, Boolean diagnosisState) {
        this.id = id;
        this.medRecId = medRecId;
        this.regisId = regisId;
        this.diseaseId = diseaseId;
        this.diagnosisType = diagnosisType;
        this.illDate = illDate;
        this.diagnosisState = diagnosisState;
    }

    public Diagnosis() {
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

    public Integer getDiseaseId() {
        return diseaseId;
    }

    public void setDiseaseId(Integer diseaseId) {
        this.diseaseId = diseaseId;
    }

    public Boolean getDiagnosisType() {
        return diagnosisType;
    }

    public void setDiagnosisType(Boolean diagnosisType) {
        this.diagnosisType = diagnosisType;
    }

    public Date getIllDate() {
        return illDate;
    }

    public void setIllDate(Date illDate) {
        this.illDate = illDate;
    }

    public Boolean getDiagnosisState() {
        return diagnosisState;
    }

    public void setDiagnosisState(Boolean diagnosisState) {
        this.diagnosisState = diagnosisState;
    }
}