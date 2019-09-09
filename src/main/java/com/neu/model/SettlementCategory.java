package com.neu.model;

public class SettlementCategory {
    private Integer id;

    private String code;

    private String name;

    public SettlementCategory(Integer id, String code, String name) {
        this.id = id;
        this.code = code;
        this.name = name;
    }

    public SettlementCategory() {
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
}