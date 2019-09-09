package com.neu.model;

public class User {
    private Integer id;

    private String username;

    private String psw;

    private String name;

    private Integer userType;

    private Integer proTitleId;

    private Integer departmentId;

    private Integer regisLevelId;

    public User(Integer id, String username, String psw, String name, Integer userType, Integer proTitleId, Integer departmentId, Integer regisLevelId) {
        this.id = id;
        this.username = username;
        this.psw = psw;
        this.name = name;
        this.userType = userType;
        this.proTitleId = proTitleId;
        this.departmentId = departmentId;
        this.regisLevelId = regisLevelId;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw == null ? null : psw.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getProTitleId() {
        return proTitleId;
    }

    public void setProTitleId(Integer proTitleId) {
        this.proTitleId = proTitleId;
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getRegisLevelId() {
        return regisLevelId;
    }

    public void setRegisLevelId(Integer regisLevelId) {
        this.regisLevelId = regisLevelId;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", psw='" + psw + '\'' +
                ", name='" + name + '\'' +
                ", userType=" + userType +
                ", proTitleId=" + proTitleId +
                ", departmentId=" + departmentId +
                ", regisLevelId=" + regisLevelId +
                '}';
    }
}