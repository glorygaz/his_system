package com.neu.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Patient {
    private Integer medicalRecordId;

    private String idnum;

    private String name;

    private Date birthday;

    private Integer age;

    private String ageType;

    private Boolean sex;

    private String address;

    public Patient(Integer medicalRecordId, String idnum, String name, Date birthday, Integer age, String ageType, Boolean sex, String address) {
        this.medicalRecordId = medicalRecordId;
        this.idnum = idnum;
        this.name = name;
        this.birthday = birthday;
        this.age = age;
        this.ageType = ageType;
        this.sex = sex;
        this.address = address;
    }

    public Patient() {
        super();
    }

    public Integer getMedicalRecordId() {
        return medicalRecordId;
    }

    public void setMedicalRecordId(Integer medicalRecordId) {
        this.medicalRecordId = medicalRecordId;
    }

    public String getIdnum() {
        return idnum;
    }

    public void setIdnum(String idnum) {
        this.idnum = idnum == null ? null : idnum.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAgeType() {
        return ageType;
    }

    public void setAgeType(String ageType) {
        this.ageType = ageType == null ? null : ageType.trim();
    }

    public Boolean getSex() {
        return sex;
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
}