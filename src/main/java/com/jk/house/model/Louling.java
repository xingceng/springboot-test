package com.jk.house.model;

import java.io.Serializable;

public class Louling implements Serializable {
    private static final long serialVersionUID = -7455813611985718823L;
    private Integer  loulingid;
    private String loulingname;

    public Integer getLoulingid() {
        return loulingid;
    }

    public void setLoulingid(Integer loulingid) {
        this.loulingid = loulingid;
    }

    public String getLoulingname() {
        return loulingname;
    }

    public void setLoulingname(String loulingname) {
        this.loulingname = loulingname;
    }
}
