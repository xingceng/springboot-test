package com.jk;

import com.jk.house.model.Acreage;
import com.jk.house.service.HouseRwjService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class Testredis {
    @Autowired
    private RedisTemplate RedisTemplate;
    @Autowired
    HouseRwjService  houseRwjService;
   @Test
    public void operateString() {
        RedisTemplate.opsForValue().set("author", "luoliang");
        Object value = RedisTemplate.opsForValue().get("author");
        System.err.println(value);
    }
    @Test
    public  void operatelist(){

        List<Acreage> list = houseRwjService.queryAcreage();
        System.err.println(list);
       // RedisTemplate.opsForList().leftPush("listkey",list);
    }



   /* @Test
    public void operateStrings() {
        Set<String> keys = RedisTemplate.keys("*");

        RedisTemplate.delete(keys);
    }*/

}
