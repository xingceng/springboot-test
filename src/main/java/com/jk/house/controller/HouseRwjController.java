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
        if (redisTemplate.opsForList().leftPop("Acreage") == null) {
            List<Acreage> list = houseRwjService.queryAcreage();
            redisTemplate.opsForList().leftPush("Acreage", list);
            resultList1 = (List<Acreage>) redisTemplate.opsForList().leftPop("Acreage");
            System.err.println("queryAcreage"+1);
        } else {
            resultList1 = (List<Acreage>) redisTemplate.opsForList().leftPop("Acreage");
            System.err.println("queryAcreage"+2);
        }
        return resultList1;
    }

   /* //查询楼层
    @RequestMapping("queryLouCeng")
    @ResponseBody
    public List<Louceng> queryLouCeng() {
        List<Louceng> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Louceng") == null) {
            List<Louceng> list = houseRwjService.queryLouCeng();
            redisTemplate.opsForList().leftPush("Louceng", list);
            resultList1 = (List<Louceng>) redisTemplate.opsForList().leftPop("Louceng");
            System.err.println("queryLouCeng"+1);
        } else {
            resultList1 = (List<Louceng>) redisTemplate.opsForList().leftPop("Louceng");
        }
        return resultList1;
    }

     //查询楼龄
    @RequestMapping("queryLouLing")
    @ResponseBody
    public List<Louling> queryLouLing() {
        List<Louling> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Louling") == null) {
            List<Louling> list = houseRwjService.queryLouLing();
            redisTemplate.opsForList().leftPush("Louling", list);
            resultList1 = (List<Louling>) redisTemplate.opsForList().leftPop("Louling");
            System.err.println("queryLouLing"+1);
        } else {
            resultList1 = (List<Louling>) redisTemplate.opsForList().leftPop("Louling");
        }
        return resultList1;
    }

  //查询价格
    @RequestMapping("queryPrice")
    @ResponseBody
    public List<Privace> queryPrice() {
        List<Privace> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Privace") == null) {
            List<Privace> list = houseRwjService.queryPrice();
            redisTemplate.opsForList().leftPush("Privace", list);
            resultList1 = (List<Privace>) redisTemplate.opsForList().leftPop("Privace");
            System.err.println("queryPrice"+1);
        } else {
            resultList1 = (List<Privace>) redisTemplate.opsForList().leftPop("Privace");
        }
        return resultList1;
    }

    //查询用途
    @RequestMapping("queryYongtu")
    @ResponseBody
    public List<Yongtu> queryYongtu() {
        List<Yongtu> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Yongtu") == null) {
            List<Yongtu> list = houseRwjService.queryYongtu();
            redisTemplate.opsForList().leftPush("Yongtu", list);
            resultList1 = (List<Yongtu>) redisTemplate.opsForList().leftPop("Yongtu");
            System.err.println("queryYongtu"+1);
        } else {
            resultList1 = (List<Yongtu>) redisTemplate.opsForList().leftPop("Yongtu");
        }
        return resultList1;
    }

    //查询装修
    @RequestMapping("queryZhuangxiu")
    @ResponseBody
    public List<Zhuangxiu> queryZhuangxiu() {
        List<Zhuangxiu> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Zhuangxiu") == null) {
            List<Zhuangxiu> list = houseRwjService.queryZhuangxiu();
            redisTemplate.opsForList().leftPush("Zhuangxiu", list);
            resultList1 = (List<Zhuangxiu>) redisTemplate.opsForList().leftPop("Zhuangxiu");
            System.err.println("queryZhuangxiu"+1);
        } else {
            resultList1 = (List<Zhuangxiu>) redisTemplate.opsForList().leftPop("Zhuangxiu");
        }
        return resultList1;
    }

    //查询户型
    @RequestMapping("queryHuxing")
    @ResponseBody
    public List<Unit> queryHuxing() {
        List<Unit> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("Unit") == null) {
            List<Unit> list = houseRwjService.queryHuxing();
            redisTemplate.opsForList().leftPush("Unit", list);
            resultList1 = (List<Unit>) redisTemplate.opsForList().leftPop("Unit");
            System.err.println("queryHuxing"+1);
        } else {
            resultList1 = (List<Unit>) redisTemplate.opsForList().leftPop("Unit");
        }
        return resultList1;
    }

    //查询朝向
    @RequestMapping("queryMianxiang")
    @ResponseBody
    public List<Mianxiang> queryMianxiang() {
        List<Mianxiang> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("queryMianxiang") == null) {
            List<Mianxiang> list = houseRwjService.queryMianxiang();
            redisTemplate.opsForList().leftPush("queryMianxiang", list);
            resultList1 = (List<Mianxiang>) redisTemplate.opsForList().leftPop("queryMianxiang");
            System.err.println("queryMianxiang"+1);
        } else {
            resultList1 = (List<Mianxiang>) redisTemplate.opsForList().leftPop("queryMianxiang");
        }
        return resultList1;
    }

    // 房屋展示
    @RequestMapping("queryfangyuan")
    @ResponseBody
    public List<House> queryfangyuan(Integer housetype, Integer page, Integer rows) {
        List<House> resultList1 = null;
        if (redisTemplate.opsForList().leftPop("House") == null) {
            List<House> list = houseRwjService.queryfangyuan(housetype, page, rows);
            redisTemplate.opsForList().leftPush("House", list);
            resultList1 = (List<House>) redisTemplate.opsForList().leftPop("House");
            System.err.println("queryfangyuan"+1);
        } else {
            resultList1 = (List<House>) redisTemplate.opsForList().leftPop("House");
        }
        return resultList1;
    }

    // 房屋详情展示
    @RequestMapping("toxiangqing")
    public String queryfangyuanbyid(Integer houseid, Model model) {
        House resultList1 = null;
        if (redisTemplate.opsForList().leftPop("House") == null) {
            House list =  houseRwjService.queryfangyuanbyid(houseid);
            redisTemplate.opsForList().leftPush("House", list);
            resultList1 = (House) redisTemplate.opsForList().leftPop("House");
            System.err.println("toxiangqing"+1);
        } else {
            resultList1 = (House) redisTemplate.opsForList().leftPop("House");
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
        if (redisTemplate.opsForList().leftPop("Circuit") == null) {
            List<Circuit> list = houseRwjService.queryxianlu(id);
            redisTemplate.opsForList().leftPush("Circuit", list);
            resultList1 = (List<Circuit>) redisTemplate.opsForList().leftPop("Circuit");
            System.err.println("queryxianlu"+1);
        } else {
            resultList1 = (List<Circuit>) redisTemplate.opsForList().leftPop("Circuit");
        }
        return resultList1;
    }*/

}
