package com.jk.house.service;


import com.jk.house.dao.KnowZylDao;
import com.jk.house.model.BuyHouse;
import com.jk.house.model.Kehu;
import com.jk.house.model.Knowledge;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KnowZylServiceImpl implements KnowZylService{

    @Autowired
    private KnowZylDao knowZylDao;
    @Override
    public List<BuyHouse> queryknowledge(Integer page, Integer rows) {
        return knowZylDao.queryknowledge(page,rows);
    }

    @Override
    public void updateClick(Integer id) {
        knowZylDao.updateClick(id);
    }

    @Override
    public BuyHouse queryknowledgeById(Integer id) {
        return knowZylDao.queryknowledgeById(id);
    }

    @Override
    public List<Knowledge> queryZhiShi(Integer id) {
        return knowZylDao.queryZhiShi(id);
    }

    @Override
    public List<BuyHouse> querybuyHouseBykid(Integer id) {
        return knowZylDao.querybuyHouseBykid(id);
    }

    @Override
    public void addKeHeUser(Kehu kehu) {
        knowZylDao.addKeHeUser(kehu);
    }

    @Override
    public String queryUser(String username) {
       Kehu kehu= knowZylDao.queryUser(username);
       if(kehu==null){
           return "客户不存在";
       }else{
           return "用户名已存在";
       }

    }
}
