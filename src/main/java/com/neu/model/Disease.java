package com.neu.model;

public class Disease {
    private Integer id;

    private String diseaseName;

    private String diseaseCode;

    private Integer diseaseClassId;

    public Disease(Integer id, String diseaseName, String diseaseCode, Integer diseaseClassId) {
        this.id = id;
        this.diseaseName = diseaseName;
        this.diseaseCode = diseaseCode;
        this.diseaseClassId = diseaseClassId;
    }

    public Disease() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName == null ? null : diseaseName.trim();
    }

    public String getDiseaseCode() {
        return diseaseCode;
    }

    public void setDiseaseCode(String diseaseCode) {
        this.diseaseCode = diseaseCode == null ? null : diseaseCode.trim();
    }

    public Integer getDiseaseClassId() {
        return diseaseClassId;
    }

    public void setDiseaseClassId(Integer diseaseClassId) {
        this.diseaseClassId = diseaseClassId;
    }
}