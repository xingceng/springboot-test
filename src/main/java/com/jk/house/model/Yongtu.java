package com.jk.house.model;

import java.io.Serializable;

public class Yongtu implements Serializable {
    private static final long serialVersionUID = -4154226648661097785L;
    private Integer yongtuid;
    private String yongtuname;

    public Integer getYongtuid() {
        return yongtuid;
    }

    public void setYongtuid(Integer yongtuid) {
        this.yongtuid = yongtuid;
    }

    public String getYongtuname() {
        return yongtuname;
    }

    public void setYongtuname(String yongtuname) {
        this.yongtuname = yongtuname;
    }
}
