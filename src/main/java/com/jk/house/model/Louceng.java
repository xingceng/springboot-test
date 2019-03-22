package com.jk.house.model;

import java.io.Serializable;

public class Louceng implements Serializable {
    private static final long serialVersionUID = -2964505464836935851L;
    private Integer locengid;
    private String loucengname;

    public Integer getLocengid() {
        return locengid;
    }

    public void setLocengid(Integer locengid) {
        this.locengid = locengid;
    }

    public String getLoucengname() {
        return loucengname;
    }

    public void setLoucengname(String loucengname) {
        this.loucengname = loucengname;
    }
}
