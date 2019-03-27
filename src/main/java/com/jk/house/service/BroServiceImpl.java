/**
 * @ClassName: BroServiceImpl
 * @Description: TODO
 * @Author: 杨明瑞
 * @Date: 2019/3/25 14:38
 * @Version: 1.0
 */
package com.jk.house.service;

import com.jk.house.dao.BroDao;
import com.jk.house.model.Broker;
import com.jk.house.model.Circuit;
import com.jk.house.model.House;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BroServiceImpl implements BroService {

    @Autowired
    private BroDao broDao;

    @Override
    public List<Broker> queryBroker() {
        return broDao.queryBroker();
    }

    @Override
    public List<Broker> queryBroInfo(Integer id) {
        return broDao.queryBroInfo(id);
    }
}
