/**
 * @ClassName: BroDao
 * @Description: TODO
 * @Author: 杨明瑞
 * @Date: 2019/3/25 14:39
 * @Version: 1.0
 */
package com.jk.house.dao;

import com.jk.house.model.Broker;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BroDao {

    @Select("select b.id,b.broCover,b.broName,b.iphone,count(f.userid) follCount," +
            "CONCAT(c.circuitname,' · ',c2.circuitname,' · ',s.storename,' · ',b.workyear) coverage," +
            "(select count(l.id) from z_lookhouse l where l.brokerid = b.id and l.`commit` = 1) daikan," +
            "(select count(h.id) from z_hetong h where h.brokerid = b.id and h.`status` = 0) zuping " +
            "from t_follow f " +
            "left join t_broker b on f.broid = b.id " +
            "left join t_circuit c on b.province = c.circuitid " +
            "left join t_circuit c2 on b.city = c2.circuitid " +
            "left join t_store s on b.brostore = s.id " +
            "group by f.broid order by count(f.userid) desc")
    List<Broker> queryBroker();

    @Select("select b.id,b.brocover,b.broname,b.iphone,b.workyear," +
            "concat(c.circuitname,'-',c2.circuitname) coverage,s.storename storeName," +
            "(select count(f.userid) from t_follow f where f.broid = b.id) follCount," +
            "(select count(l.id) from z_lookhouse l where l.brokerid = b.id and l.`commit` = 1) daikan," +
            "(select count(h.id) from z_hetong h where h.brokerid = b.id and h.`status` = 0) zuping " +
            "from t_follow f left join t_broker b on f.broid = b.id " +
            "left join t_circuit c on b.province = c.circuitid " +
            "left join t_circuit c2 on b.city = c2.circuitid " +
            "left join t_store s on b.brostore = s.id " +
            "where b.id = #{id} " +
            "group by b.id")
    List<Broker> queryBroInfo(Integer id);
}
