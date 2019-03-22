package com.jk.house.service;

import com.jk.house.dao.HouseRwjDao;
import com.jk.house.model.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HouseRwjServiceImpl implements HouseRwjService {

    @Resource
    private HouseRwjDao houseRwjDao;

    @Override
    public String login(Kehu kehu) {
        List<Kehu> list = houseRwjDao.getTestNameIsNull(kehu);
        if (list.size() == 1) {
            if (kehu.getKehupassword().equals(list.get(0).getKehupassword())) {
                return "loginSuccess"+","+list.get(0).getKehuname()+","+list.get(0).getKehuid();
            } else {
                return "userPassNo";
            }
        } else {
            return "userNameNO";
        }
    }

    @Override

    public List<Acreage> queryAcreage() {
        return houseRwjDao.queryAcreage();
    }

    @Override
    public List<Louceng> queryLouCeng() {
        return houseRwjDao.queryLouCeng();
    }

    @Override
    public List<Louling> queryLouLing() {
        return houseRwjDao.queryLouLing();
    }

    @Override
    public List<Privace> queryPrice() {
        return houseRwjDao.queryPrice();
    }

    @Override
    public List<Yongtu> queryYongtu() {
        return houseRwjDao.queryYongtu();
    }

    @Override
    public List<Zhuangxiu> queryZhuangxiu() {
        return houseRwjDao.queryZhuangxiu();
    }

    @Override
    public List<Unit> queryHuxing() {
        return houseRwjDao.queryHuxing();
    }

    @Override
    public List<Mianxiang> queryMianxiang() {
        return houseRwjDao.queryMianxiang();
    }

    @Override
    public List<House> queryfangyuan(Integer housetype,Integer page,Integer rows) {
        return houseRwjDao.queryfangyuan(housetype,page,rows);
    }

    @Override
    public List<Circuit> queryxianlu(Integer id) {
        return houseRwjDao.queryxianlu(id);
    }

    @Override
    public List<House> queryershouofangbydate(Integer housetype, Integer page, Integer rows) {
        return houseRwjDao.queryershouofangbydate(housetype,page,rows);
    }

    @Override
    public List<House> queryershouofangbydates(Integer housetype, Integer page, Integer rows) {
        return houseRwjDao.queryershouofangbydates(housetype,page,rows);
    }

    @Override
    public House queryfangyuanbyid(Integer houseid) {
        return houseRwjDao.queryfangyuanbyid(houseid);

    }

}
