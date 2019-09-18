package com.neu.dto;

public class DiagnosisWithDisease {
    private int diseaseId;
    private String diseaseIcd;
    private String diseaseName;
    private String illTime;

    public DiagnosisWithDisease() {
    }

    public DiagnosisWithDisease(int diseaseId, String diseaseIcd, String diseaseName, String illTime) {
        this.diseaseId = diseaseId;
        this.diseaseIcd = diseaseIcd;
        this.diseaseName = diseaseName;
        this.illTime = illTime;
    }

    public int getDiseaseId() {
        return diseaseId;
    }

    public void setDiseaseId(int diseaseId) {
        this.diseaseId = diseaseId;
    }

    public String getDiseaseIcd() {
        return diseaseIcd;
    }

    public void setDiseaseIcd(String diseaseIcd) {
        this.diseaseIcd = diseaseIcd;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public String getIllTime() {
        return illTime;
    }

    public void setIllTime(String illTime) {
        this.illTime = illTime;
    }
}
