package com.neu.model;

public class PrescriptionItem {
    private Integer id;

    private Integer prescId;

    private Integer itemId;

    private String usage;

    private String dosage;

    private String frequency;

    private Integer num;

    private Integer state;

    public PrescriptionItem(Integer id, Integer prescId, Integer itemId, String usage, String dosage, String frequency, Integer num, Integer state) {
        this.id = id;
        this.prescId = prescId;
        this.itemId = itemId;
        this.usage = usage;
        this.dosage = dosage;
        this.frequency = frequency;
        this.num = num;
        this.state = state;
    }

    public PrescriptionItem() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrescId() {
        return prescId;
    }

    public void setPrescId(Integer prescId) {
        this.prescId = prescId;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage == null ? null : usage.trim();
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage == null ? null : dosage.trim();
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency == null ? null : frequency.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}