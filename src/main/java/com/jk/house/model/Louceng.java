package com.jk.house.model;

import java.io.Serializable;

public class Louceng implements Serializable {
    private static final long serialVersionUID = -2964505464836935851L;
    private Integer loucengid;
    private String loucengname;

    public Integer getLoucengid() {
        return loucengid;
    }

    public void setLoucengid(Integer loucengid) {
        this.loucengid = loucengid;
    }

    public String getLoucengname() {
        return loucengname;
    }

    public void setLoucengname(String loucengname) {
        this.loucengname = loucengname;
    }
}
