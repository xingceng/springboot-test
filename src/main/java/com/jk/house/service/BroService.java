/**
 * @ClassName: BroService
 * @Description: TODO
 * @Author: 杨明瑞
 * @Date: 2019/3/25 11:42
 * @Version: 1.0
 */
package com.jk.house.service;

import com.jk.house.model.Broker;

import java.util.List;

public interface BroService {

    List<Broker> queryBroker();

    List<Broker> queryBroInfo(Integer id);
}
