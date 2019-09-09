package com.neu.model;

import java.math.BigDecimal;

public class Medicine {
    private Integer medicineId;

    private String medicineCode;

    private String medicineName;

    private String specification;

    private String unit;

    private String manufacturer;

    private String dosageForm;

    private Short medicineType;

    private BigDecimal price;

    public Medicine(Integer medicineId, String medicineCode, String medicineName, String specification, String unit, String manufacturer, String dosageForm, Short medicineType, BigDecimal price) {
        this.medicineId = medicineId;
        this.medicineCode = medicineCode;
        this.medicineName = medicineName;
        this.specification = specification;
        this.unit = unit;
        this.manufacturer = manufacturer;
        this.dosageForm = dosageForm;
        this.medicineType = medicineType;
        this.price = price;
    }

    public Medicine() {
        super();
    }

    public Integer getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(Integer medicineId) {
        this.medicineId = medicineId;
    }

    public String getMedicineCode() {
        return medicineCode;
    }

    public void setMedicineCode(String medicineCode) {
        this.medicineCode = medicineCode == null ? null : medicineCode.trim();
    }

    public String getMedicineName() {
        return medicineName;
    }

    public void setMedicineName(String medicineName) {
        this.medicineName = medicineName == null ? null : medicineName.trim();
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification == null ? null : specification.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public String getDosageForm() {
        return dosageForm;
    }

    public void setDosageForm(String dosageForm) {
        this.dosageForm = dosageForm == null ? null : dosageForm.trim();
    }

    public Short getMedicineType() {
        return medicineType;
    }

    public void setMedicineType(Short medicineType) {
        this.medicineType = medicineType;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}