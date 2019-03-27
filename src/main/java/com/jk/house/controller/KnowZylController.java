package com.jk.house.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.house.model.BuyHouse;
import com.jk.house.model.Kehu;
import com.jk.house.model.Knowledge;
import com.jk.house.service.KnowZylService;
import com.jk.house.utils.HttpClientUtil;
import com.jk.house.utils.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import static com.jk.house.utils.HttpClientUtil.post;

@Controller
public class KnowZylController {

    @Autowired
    private KnowZylService knowZylService;
    @Autowired
    private RedisTemplate redisTemplate;

    //查询知识列表
    @RequestMapping("queryknowledge")
    @ResponseBody
    public List<BuyHouse> queryLouCeng(Integer page, Integer rows) {
        List<BuyHouse> resultList1 = null;
        if (redisTemplate.opsForValue().get("knowledge") == null) {
            List<BuyHouse> list = knowZylService.queryknowledge(page,rows);
            redisTemplate.opsForValue().set("knowledge", list,15,TimeUnit.DAYS);
            resultList1 = (List<BuyHouse>) redisTemplate.opsForValue().get("knowledge");
            System.err.println("queryknowledge"+1);
        } else {
            resultList1 = (List<BuyHouse>) redisTemplate.opsForValue().get("knowledge");
        }
        return resultList1;
    }

    //查询知识相关详细信息
    @RequestMapping("queryknowledgeById")
    @ResponseBody
    public BuyHouse queryLouCeng(Integer id) {
        BuyHouse buyHouse = null;
        if (redisTemplate.opsForValue().get("knowledge"+id) != null){
            System.out.println("走缓冲了！！");
            buyHouse = (BuyHouse) redisTemplate.opsForValue().get("knowledge"+id);
        } else {
            System.out.println("走数据库！！");
            buyHouse = knowZylService.queryknowledgeById(id);
            redisTemplate.opsForValue().set("knowledge"+id,buyHouse,1,TimeUnit.DAYS);
        }
        return buyHouse;
    }

    //修改点赞数
    @RequestMapping("updateClick")
    @ResponseBody
    public void updateClick(Integer id){
        knowZylService.updateClick(id);
        BuyHouse buyHouse = (BuyHouse) redisTemplate.opsForValue().get("knowledge"+id);
        buyHouse.setClick(buyHouse.getClick()+1);
        redisTemplate.opsForValue().set("knowledge"+id,buyHouse,1,TimeUnit.DAYS);
    }

    //查询知识列表
    @RequestMapping("queryZhiShi")
    @ResponseBody
    public List<Knowledge> queryZhiShi(Integer id){
        List<Knowledge> arr = null;
        if (redisTemplate.opsForValue().get("ZhiShi"+id) != null){
            System.out.println("走缓冲了！！");
            arr = (List<Knowledge>) redisTemplate.opsForValue().get("ZhiShi"+id);
        } else {
            System.out.println("走数据库！！");
            arr = knowZylService.queryZhiShi(id);
            redisTemplate.opsForValue().set("ZhiShi"+id,arr,365,TimeUnit.DAYS);
        }
        return arr;
    }

    //根据知识类型查询知识
    @RequestMapping("querybuyHouseBykid")
    @ResponseBody
    public List<BuyHouse> querybuyHouseBykid(Integer kid) {
        List<BuyHouse> resultList1 = null;
        if (redisTemplate.opsForValue().get("buyHouseBykid"+kid) == null) {
            List<BuyHouse> list = knowZylService.querybuyHouseBykid(kid);
            redisTemplate.opsForValue().set("buyHouseBykid"+kid, list,15,TimeUnit.DAYS);
            resultList1 = (List<BuyHouse>) redisTemplate.opsForValue().get("buyHouseBykid"+kid);
            System.err.println("buyHouseBykid"+kid+1);
        } else {
            resultList1 = (List<BuyHouse>) redisTemplate.opsForValue().get("buyHouseBykid"+kid);
        }
        return resultList1;
    }

    @RequestMapping("sendCode")
    @ResponseBody
    public  String[] code(String phone) {
        // 第一种是可变大小线程池，按照任务数来分配线程，
        ExecutorService e = Executors.newCachedThreadPool();
        String url = "https://api.miaodiyun.com/20150822/industrySMS/sendSMS";
        HashMap<String, Object> params = new HashMap<>();
        params.put("accountSid","69c6b938017a4a6895a3dbe3ff26d7ce");//开发者主账号ID
        params.put("to", phone);//短信接收端手机号码集合
        SimpleDateFormat time2 = new SimpleDateFormat("yyyy-MM-dd");
        String time1 = time2.format(new Date());
        params.put("timestamp", time1);//时间戳
        String sigstr = "69c6b938017a4a6895a3dbe3ff26d7ce" + "c98acca2940a460e8161e72927292a72" + time1;
        params.put("sig", Md5Util.getMd532(sigstr));//签名。MD5(ACCOUNT SID + AUTH TOKEN + timestamp)。共32位（小写）
        params.put("templateid", "1120306180");//短信模板ID
        long str2 = Math.round(Math.random()*899999+100000);
        params.put("param", str2);//短信内容参数
        redisTemplate.delete(phone);
        redisTemplate.opsForValue().set(phone,str2,120,TimeUnit.SECONDS);
        String respData = HttpClientUtil.post(url, params);
        JSONObject parseObject = JSON.parseObject(respData);
        String respCode = parseObject.getString("respCode");
        String array = str2+","+respCode;
        System.out.println(array);
        String[] array1=array.split(",");
        return array1;
    }
    @RequestMapping("addKeHuUser")
    public String addKeHuUser(Kehu kehu){
        knowZylService.addKeHeUser(kehu);
        return "login";
    }
    @RequestMapping("queryCard")
    @ResponseBody
    public String queryCard(Long code,String phone) {
        //redisTemplate.delete(phone);
        //redisTemplate.opsForValue().set(phone,"123456",1200,TimeUnit.SECONDS);
        Long code1 = (Long) redisTemplate.opsForValue().get(phone);
        if (code1 == null) {
            return "验证码错误!";
        } else if ( !code1.equals(code) ) {
            return "验证码错误!";
        }else{
            return "验证码正确";
        }
    }
    @RequestMapping("queryUser")
    @ResponseBody
    public String queryUser(String username){
        String shifou =  "";
         if(redisTemplate.opsForValue().get(username)==null){
             shifou= knowZylService.queryUser(username);
             redisTemplate.opsForValue().set(username, shifou,30,TimeUnit.SECONDS);
           }else{
             shifou =  (String) redisTemplate.opsForValue().get(username);
         }
        return shifou;
    }
}
