package com.jk.house.model;

import java.io.Serializable;

public class Privace implements Serializable {
    private static final long serialVersionUID = 6868235960930446216L;
    private Integer priceid;
    private String pricename;

    public Integer getPriceid() {
        return priceid;
    }

    public void setPriceid(Integer priceid) {
        this.priceid = priceid;
    }

    public String getPricename() {
        return pricename;
    }

    public void setPricename(String pricename) {
        this.pricename = pricename;
    }
}
