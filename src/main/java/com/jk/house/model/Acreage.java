package com.jk.house.model;

import java.io.Serializable;

public class Acreage implements Serializable {

    private static final long serialVersionUID = 5767874801680088850L;
    private Integer acreageid; //地区id
    private String acreagename; //地区名

    public Integer getAcreageid() {
        return acreageid;
    }

    public void setAcreageid(Integer acreageid) {
        this.acreageid = acreageid;
    }

    public String getAcreagename() {
        return acreagename;
    }

    public void setAcreagename(String acreagename) {
        this.acreagename = acreagename;
    }

    @Override
    public String toString() {
        return "Acreage{" +
                "acreageid=" + acreageid +
                ", acreagename='" + acreagename + '\'' +
                '}';
    }
}

