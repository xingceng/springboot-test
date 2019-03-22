package com.jk.house.model;

import java.io.Serializable;

public class Mianxiang implements Serializable {
    private static final long serialVersionUID = 8808791159263695297L;
    private Integer mianxiangid;
    private String mianxiangname;

    public Integer getMianxiangid() {
        return mianxiangid;
    }

    public void setMianxiangid(Integer mianxiangid) {
        this.mianxiangid = mianxiangid;
    }

    public String getMianxiangname() {
        return mianxiangname;
    }

    public void setMianxiangname(String mianxiangname) {
        this.mianxiangname = mianxiangname;
    }
}
