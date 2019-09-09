package com.neu.dto;

public class DiagnosisPatient {
    private int medReId;
    private String name;
    private int regisId;
    private int age;
    private String sex;
    private String ageType;
    private String regisState;

    public DiagnosisPatient() {
    }

    public DiagnosisPatient(int medReId, String name, int regisId, int age, String sex, String ageType, String regisState) {
        this.medReId = medReId;
        this.name = name;
        this.regisId = regisId;
        this.age = age;
        this.sex = sex;
        this.ageType = ageType;
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

    public int getRegisId() {
        return regisId;
    }

    public void setRegisId(int regisId) {
        this.regisId = regisId;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAgeType() {
        return ageType;
    }

    public void setAgeType(String ageType) {
        this.ageType = ageType;
    }

    public String getRegisState() {
        return regisState;
    }

    public void setRegisState(String regisState) {
        this.regisState = regisState;
    }
}
