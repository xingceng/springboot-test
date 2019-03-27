/**
 * @ClassName: BroController
 * @Description: TODO
 * @Author: 杨明瑞
 * @Date: 2019/3/25 11:38
 * @Version: 1.0
 */
package com.jk.house.controller;

import com.jk.house.model.Broker;
import com.jk.house.model.Circuit;
import com.jk.house.service.BroService;
import com.jk.house.utils.CommonCanstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Controller
public class BroController {

    @Autowired
    private BroService broService;

    @Autowired
    private RedisTemplate redisTemplate;

    @RequestMapping("queryBrok")
    @ResponseBody
    public List<Broker> queryBroker(){
        List<Broker> resultList1 = null;
        if (redisTemplate.opsForValue().get("Broker") == null) {
            resultList1 = broService.queryBroker();
            redisTemplate.opsForValue().set("Broker", resultList1,3, TimeUnit.MINUTES);
        } else {
            resultList1 = (List<Broker>) redisTemplate.opsForValue().get("Broker");
        }
        return resultList1;
    }

    @RequestMapping("queryBroInfo")
    @ResponseBody
    public List<Broker> queryBroInfo(HttpSession session){
        List<Broker> broInfoList = null;
        Integer id = (Integer) session.getAttribute("id");
        String cacheKey = CommonCanstant.NAV_BROKER_CACHE + id;
        if (redisTemplate.opsForValue().get("cacheKey") == null) {
            broInfoList = broService.queryBroInfo(id);
            redisTemplate.opsForValue().set(cacheKey, broInfoList,3, TimeUnit.MINUTES);
        } else {
            broInfoList = (List<Broker>) redisTemplate.opsForValue().get("Broker");
        }
        return broInfoList;
    }
}
