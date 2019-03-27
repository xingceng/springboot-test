package com.jk.house.service;


import com.jk.house.model.*;
import org.springframework.cache.annotation.Cacheable;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface HouseRwjService {


    //查询面积
    @Cacheable(value = "acreage", key = "#root.targetClass + #queryAcreage", unless = "#result eq null")
    List<Acreage> queryAcreage();

    //查询楼层
    List<Louceng> queryLouCeng();

    //查询楼龄
    List<Louling> queryLouLing();

    //查询价格
    List<Privace> queryPrice();

    //查询用途
    List<Yongtu> queryYongtu();

    //查询装修
    List<Zhuangxiu> queryZhuangxiu();

    //查询户型
    List<Unit> queryHuxing();

    //查询朝向
    List<Mianxiang> queryMianxiang();

    //查询房屋
    List<House> queryfangyuan(Integer housetype,Integer page,Integer rows);

    //查询线路
    List<Circuit> queryxianlu(Integer id);


    List<House> queryershouofangbydate(Integer housetype, Integer page, Integer rows);

    List<House> queryershouofangbydates(Integer housetype, Integer page, Integer rows);

    House queryfangyuanbyid(Integer houseid);


    Kehu queryKeHu(String Kehuname);

    List<House> queryershoufangbytype(House house);
}
