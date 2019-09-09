package com.neu.model;

public class DiseCatalogue {
    private Integer id;

    private String className;

    private String classCode;

    private String diseaseClassInfo;

    public DiseCatalogue(Integer id, String className, String classCode, String diseaseClassInfo) {
        this.id = id;
        this.className = className;
        this.classCode = classCode;
        this.diseaseClassInfo = diseaseClassInfo;
    }

    public DiseCatalogue() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getClassCode() {
        return classCode;
    }

    public void setClassCode(String classCode) {
        this.classCode = classCode == null ? null : classCode.trim();
    }

    public String getDiseaseClassInfo() {
        return diseaseClassInfo;
    }

    public void setDiseaseClassInfo(String diseaseClassInfo) {
        this.diseaseClassInfo = diseaseClassInfo == null ? null : diseaseClassInfo.trim();
    }
}