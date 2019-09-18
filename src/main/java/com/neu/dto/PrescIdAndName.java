package com.neu.dto;

public class PrescIdAndName {
    private int prescId;
    private String prescName;

    public PrescIdAndName(int prescId, String prescName) {
        this.prescId = prescId;
        this.prescName = prescName;
    }

    public PrescIdAndName() {
    }

    public int getPrescId() {
        return prescId;
    }

    public void setPrescId(int prescId) {
        this.prescId = prescId;
    }

    public String getPrescName() {
        return prescName;
    }

    public void setPrescName(String prescName) {
        this.prescName = prescName;
    }
}
