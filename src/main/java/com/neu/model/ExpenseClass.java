package com.neu.model;

public class ExpenseClass {
    private Integer id;

    private String expCode;

    private String expName;

    public ExpenseClass(Integer id, String expCode, String expName) {
        this.id = id;
        this.expCode = expCode;
        this.expName = expName;
    }

    public ExpenseClass() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExpCode() {
        return expCode;
    }

    public void setExpCode(String expCode) {
        this.expCode = expCode == null ? null : expCode.trim();
    }

    public String getExpName() {
        return expName;
    }

    public void setExpName(String expName) {
        this.expName = expName == null ? null : expName.trim();
    }
}