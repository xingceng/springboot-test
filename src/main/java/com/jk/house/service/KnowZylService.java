package com.jk.house.service;

import com.jk.house.model.BuyHouse;
import com.jk.house.model.Kehu;
import com.jk.house.model.Knowledge;

import java.util.List;

public interface KnowZylService {
    List<BuyHouse> queryknowledge(Integer page, Integer rows);

    void updateClick(Integer id);

    BuyHouse queryknowledgeById(Integer id);

    List<Knowledge> queryZhiShi(Integer id);

    List<BuyHouse> querybuyHouseBykid(Integer id);

    void addKeHeUser(Kehu kehu);

    String queryUser(String username);
}
