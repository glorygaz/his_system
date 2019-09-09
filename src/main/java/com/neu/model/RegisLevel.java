package com.neu.model;

import java.math.BigDecimal;

public class RegisLevel {
    private Integer id;

    private String code;

    private String name;

    private BigDecimal amount;

    public RegisLevel(Integer id, String code, String name, BigDecimal amount) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.amount = amount;
    }

    public RegisLevel() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }
}