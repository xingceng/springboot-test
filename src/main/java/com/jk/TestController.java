package com.jk;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
    @RequestMapping("tozhishi")
    public String tozhishi() { return "zhishi"; }
    @RequestMapping("tozhishixiangqing")
    public String tozhishixiangqing(Integer id, HttpSession session) {
        session.setAttribute("id",id);
        return "zhishixiangqing"; }
    @RequestMapping("tozhishiyemian")
       public String tozhishiyemian(Integer id, HttpSession session) {
        session.setAttribute("kid",id);
        return "zhishiyemian"; }
    @RequestMapping("tosingle")
    public String tosingle() {
        return "single";
    }

    @RequestMapping("toBroker")
    public String toBroker(){
        return "broker";
    }

    @RequestMapping("toXiangQing")
    public String toXiangQing(){
        return "xiangqing";
    }

    @RequestMapping("toBroInfo")
    public String toBroInfo(Integer id,HttpSession session){
        session.setAttribute("id",id);
        return "broInfo";
    }
}
