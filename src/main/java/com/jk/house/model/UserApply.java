package com.jk.house.model;

import java.io.Serializable;

public class UserApply implements Serializable {


    private static final long serialVersionUID = 7452797675627650302L;
    private Integer id;
    private String name;
    private String phone;
    private Integer hid;
    private String applytime;
    private String looktime;
    private Integer brokerid;
    private Integer status;
    private String username;
    private String housename;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHousename() {
        return housename;
    }

    public void setHousename(String housename) {
        this.housename = housename;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getApplytime() {
        return applytime;
    }

    public void setApplytime(String applytime) {
        this.applytime = applytime;
    }

    public String getLooktime() {
        return looktime;
    }

    public void setLooktime(String looktime) {
        this.looktime = looktime;
    }

    public Integer getBrokerid() {
        return brokerid;
    }

    public void setBrokerid(Integer brokerid) {
        this.brokerid = brokerid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
