package com.jk.house.model;

import java.io.Serializable;

public class Circuit implements Serializable {
    private static final long serialVersionUID = -4738956467991570595L;
    private Integer circuitid;
    private String circuitname;
    private int pid;

    public Integer getCircuitid() {
        return circuitid;
    }

    public void setCircuitid(Integer circuitid) {
        this.circuitid = circuitid;
    }

    public String getCircuitname() {
        return circuitname;
    }

    public void setCircuitname(String circuitname) {
        this.circuitname = circuitname;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
}
