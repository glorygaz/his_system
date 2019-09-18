package com.neu.dto;

import java.math.BigDecimal;

public class PrescriptionItemWithMed {
    private int medId;
    private String name;
    private String spec;
    private BigDecimal price;
    private String usage;
    private String dosage;
    private String frequency;
    private int num;

    public PrescriptionItemWithMed(int medId, String name, String spec, BigDecimal price, String usage, String dosage, String frequency, int num) {
        this.medId = medId;
        this.name = name;
        this.spec = spec;
        this.price = price;
        this.usage = usage;
        this.dosage = dosage;
        this.frequency = frequency;
        this.num = num;
    }

    public PrescriptionItemWithMed() {
    }

    public int getMedId() {
        return medId;
    }

    public void setMedId(int medId) {
        this.medId = medId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }
}
