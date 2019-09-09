package com.neu.model;

public class Homepage {
    private Integer id;

    private Integer medRecId;

    private Integer regisId;

    private String chiefComplaint;

    private String historyOfPresentIllness;

    private String treatmentOfPresentIll;

    private String previousHistory;

    private String allergicHistory;

    private String healthCheck;

    private String inspectionAdvice;

    private String attention;

    private Integer medRecState;

    public Homepage(Integer id, Integer medRecId, Integer regisId, String chiefComplaint, String historyOfPresentIllness, String treatmentOfPresentIll, String previousHistory, String allergicHistory, String healthCheck, String inspectionAdvice, String attention, Integer medRecState) {
        this.id = id;
        this.medRecId = medRecId;
        this.regisId = regisId;
        this.chiefComplaint = chiefComplaint;
        this.historyOfPresentIllness = historyOfPresentIllness;
        this.treatmentOfPresentIll = treatmentOfPresentIll;
        this.previousHistory = previousHistory;
        this.allergicHistory = allergicHistory;
        this.healthCheck = healthCheck;
        this.inspectionAdvice = inspectionAdvice;
        this.attention = attention;
        this.medRecState = medRecState;
    }

    public Homepage() {
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

    public String getChiefComplaint() {
        return chiefComplaint;
    }

    public void setChiefComplaint(String chiefComplaint) {
        this.chiefComplaint = chiefComplaint == null ? null : chiefComplaint.trim();
    }

    public String getHistoryOfPresentIllness() {
        return historyOfPresentIllness;
    }

    public void setHistoryOfPresentIllness(String historyOfPresentIllness) {
        this.historyOfPresentIllness = historyOfPresentIllness == null ? null : historyOfPresentIllness.trim();
    }

    public String getTreatmentOfPresentIll() {
        return treatmentOfPresentIll;
    }

    public void setTreatmentOfPresentIll(String treatmentOfPresentIll) {
        this.treatmentOfPresentIll = treatmentOfPresentIll == null ? null : treatmentOfPresentIll.trim();
    }

    public String getPreviousHistory() {
        return previousHistory;
    }

    public void setPreviousHistory(String previousHistory) {
        this.previousHistory = previousHistory == null ? null : previousHistory.trim();
    }

    public String getAllergicHistory() {
        return allergicHistory;
    }

    public void setAllergicHistory(String allergicHistory) {
        this.allergicHistory = allergicHistory == null ? null : allergicHistory.trim();
    }

    public String getHealthCheck() {
        return healthCheck;
    }

    public void setHealthCheck(String healthCheck) {
        this.healthCheck = healthCheck == null ? null : healthCheck.trim();
    }

    public String getInspectionAdvice() {
        return inspectionAdvice;
    }

    public void setInspectionAdvice(String inspectionAdvice) {
        this.inspectionAdvice = inspectionAdvice == null ? null : inspectionAdvice.trim();
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention == null ? null : attention.trim();
    }

    public Integer getMedRecState() {
        return medRecState;
    }

    public void setMedRecState(Integer medRecState) {
        this.medRecState = medRecState;
    }
}