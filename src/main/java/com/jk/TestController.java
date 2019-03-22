package com.jk;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping("toindex")
    public String toindex() {
        return "index";
    }

    @RequestMapping("tologin")
    public String tologin() {
        return "login";
    }

    @RequestMapping("toregedis")
    public String toregedis() {
        return "regedis";
    }
    @RequestMapping("toershoufang")
    public String toershoufang() {
        return "ershoufang";
    }
    @RequestMapping("tozufang")
    public String tozufang() {
        return "zufang";
    }
    @RequestMapping("toxinfang")
    public String toxinfang() {
        return "xinfang";
    }
    @RequestMapping("togongyu")
    public String togongyu() {
        return "gongyu";
    }
    @RequestMapping("tohaiwai")
    public String tohaiwai() {
        return "haiwai";
    }


}
