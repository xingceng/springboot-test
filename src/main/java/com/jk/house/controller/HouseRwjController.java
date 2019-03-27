package com.jk.house.controller;


import com.jk.house.model.*;
import com.jk.house.service.HouseRwjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;


@Controller
public class HouseRwjController {

    @Autowired
    private HouseRwjService houseRwjService;
    @Autowired
    private RedisTemplate redisTemplate;



    @RequestMapping("/loginkehu")
    @ResponseBody
    public String loginkehu(Kehu kehu, HttpServletRequest request) {
        String loginFlag = null;
        loginFlag = houseRwjService.login(kehu);
        String[] parts = loginFlag.split(",");
        request.getSession().setAttribute("kehuname", parts[1]);
        String logins = parts[0];
        return logins;
    }

    //查询面积
    @RequestMapping("queryAcreage")
    @ResponseBody
    public List<Acreage> queryAcreage() {
        List<Acreage> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryAcreage") == null) {
            List<Acreage> list = houseRwjService.queryAcreage();
            redisTemplate.opsForValue().set("queryAcreage", list,15, TimeUnit.DAYS);
            resultList1 = (List<Acreage>) redisTemplate.opsForValue().get("queryAcreage");
        } else {
            resultList1 = (List<Acreage>) redisTemplate.opsForValue().get("queryAcreage");
        }
        return resultList1;
    }

    //查询楼层
    @RequestMapping("queryLouCeng")
    @ResponseBody
    public List<Louceng> queryLouCeng() {
        List<Louceng> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryLouCeng") == null) {
            List<Louceng> list = houseRwjService.queryLouCeng();
            redisTemplate.opsForValue().set("queryLouCeng", list,15, TimeUnit.DAYS);
            resultList1 = (List<Louceng>) redisTemplate.opsForValue().get("queryLouCeng");
        } else {
            resultList1 = (List<Louceng>) redisTemplate.opsForValue().get("queryLouCeng");
        }

        return resultList1;
    }

     //查询楼龄
    @RequestMapping("queryLouLing")
    @ResponseBody
    public List<Louling> queryLouLing() {
        List<Louling> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryLouLing") == null) {
            List<Louling> list = houseRwjService.queryLouLing();
            redisTemplate.opsForValue().set("queryLouLing", list,15, TimeUnit.DAYS);
            resultList1 = (List<Louling>) redisTemplate.opsForValue().get("queryLouLing");
        } else {
            resultList1 = (List<Louling>) redisTemplate.opsForValue().get("queryLouLing");
        }
        return resultList1;
    }

  //查询价格
    @RequestMapping("queryPrice")
    @ResponseBody
    public List<Privace> queryPrice() {
        List<Privace> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryPrice") == null) {
            List<Privace> list = houseRwjService.queryPrice();
            redisTemplate.opsForValue().set("queryPrice", list,15, TimeUnit.DAYS);
            resultList1 = (List<Privace>) redisTemplate.opsForValue().get("queryPrice");
        } else {
            resultList1 = (List<Privace>) redisTemplate.opsForValue().get("queryPrice");
        }
        return resultList1;
    }

    //查询用途
    @RequestMapping("queryYongtu")
    @ResponseBody
    public List<Yongtu> queryYongtu() {
        List<Yongtu> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryYongtu") == null) {
            List<Yongtu> list = houseRwjService.queryYongtu();
            redisTemplate.opsForValue().set("queryYongtu", list,15, TimeUnit.DAYS);
            resultList1 = (List<Yongtu>) redisTemplate.opsForValue().get("queryYongtu");
        } else {
            resultList1 = (List<Yongtu>) redisTemplate.opsForValue().get("queryYongtu");
        }
        return resultList1;
    }

    //查询装修
    @RequestMapping("queryZhuangxiu")
    @ResponseBody
    public List<Zhuangxiu> queryZhuangxiu() {
        List<Zhuangxiu> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryZhuangxiu") == null) {
            List<Zhuangxiu> list = houseRwjService.queryZhuangxiu();
            redisTemplate.opsForValue().set("queryZhuangxiu", list,15, TimeUnit.DAYS);
            resultList1 = (List<Zhuangxiu>) redisTemplate.opsForValue().get("queryZhuangxiu");
        } else {
            resultList1 = (List<Zhuangxiu>) redisTemplate.opsForValue().get("queryZhuangxiu");
        }
        return resultList1;
    }

    //查询户型
    @RequestMapping("queryHuxing")
    @ResponseBody
    public List<Unit> queryHuxing() {
        List<Unit> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryHuxing") == null) {
            List<Unit> list = houseRwjService.queryHuxing();
            redisTemplate.opsForValue().set("queryHuxing", list,15, TimeUnit.DAYS);
            resultList1 = (List<Unit>) redisTemplate.opsForValue().get("queryHuxing");
        } else {
            resultList1 = (List<Unit>) redisTemplate.opsForValue().get("queryHuxing");
        }
        return resultList1;
    }

    //查询朝向
    @RequestMapping("queryMianxiang")
    @ResponseBody
    public List<Mianxiang> queryMianxiang() {
        List<Mianxiang> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryMianxiang") == null) {
            List<Mianxiang> list = houseRwjService.queryMianxiang();
            redisTemplate.opsForValue().set("queryMianxiang", list,15, TimeUnit.DAYS);
            resultList1 = (List<Mianxiang>) redisTemplate.opsForValue().get("queryMianxiang");
        } else {
            resultList1 = (List<Mianxiang>) redisTemplate.opsForValue().get("queryMianxiang");
        }
        return resultList1;
    }

    // 房屋展示
    @RequestMapping("queryfangyuan")
    @ResponseBody
    public List<House> queryfangyuan(Integer housetype, Integer page, Integer rows) {
        List<House> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryfangyuan") == null) {
            List<House> list = houseRwjService.queryfangyuan(housetype,page,rows);
            redisTemplate.opsForValue().set("queryfangyuan", list,15, TimeUnit.DAYS);
            resultList1 = (List<House>) redisTemplate.opsForValue().get("queryfangyuan");
        } else {
            resultList1 = (List<House>) redisTemplate.opsForValue().get("queryfangyuan");
        }
        return resultList1;
    }

    // 房屋详情展示
    @RequestMapping("toxiangqing")
    public String queryfangyuanbyid(Integer houseid, Model model) {
        House resultList1 = null;
        if (redisTemplate.opsForValue().get("queryfangyuanbyid") == null) {
            House list =  houseRwjService.queryfangyuanbyid(houseid);
            redisTemplate.opsForList().leftPush("House", list);
            redisTemplate.opsForValue().set("queryfangyuanbyid", list,15, TimeUnit.DAYS);
            resultList1 = (House) redisTemplate.opsForValue().get("queryfangyuanbyid");
        } else {
            resultList1 = (House) redisTemplate.opsForValue().get("queryfangyuanbyid");
        }
        model.addAttribute("list", resultList1);
        return "xiangqing";
    }

    // 二手房展示展示
    @RequestMapping("queryershouofangbydate")
    @ResponseBody
    public List<House> queryershouofangbydate(Integer housetype, Integer page, Integer rows, String status) {
        List<House> list = new ArrayList<House>();
        if (status.equals("by_date")) {
            list = houseRwjService.queryershouofangbydate(housetype, page, rows);
        } else if (status.equals("by_price")) {
            list = houseRwjService.queryershouofangbydates(housetype, page, rows);
        }
        return list;
    }

    // 查询线路
    @RequestMapping("queryxianlu")
    @ResponseBody
    public List<Circuit> queryxianlu(Integer id) {
        List<Circuit> resultList1 = null;
        if (redisTemplate.opsForValue().get("queryxianlu") == null) {
            List<Circuit> list = houseRwjService.queryxianlu(id);
            redisTemplate.opsForValue().set("queryxianlu", list,15, TimeUnit.DAYS);
            resultList1 = (List<Circuit>) redisTemplate.opsForValue().get("queryxianlu");
        } else {
            resultList1 = (List<Circuit>) redisTemplate.opsForValue().get("queryxianlu");
        }
        return resultList1;
    }
    @RequestMapping("queryershoufangbytype")
    @ResponseBody
    public List<House> queryershoufangbytype(House house) {
            List<House> list = houseRwjService.queryershoufangbytype(house);
        return list;
    }
}