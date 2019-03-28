package com.jk.house.dao;

import com.jk.house.model.BuyHouse;
import com.jk.house.model.Kehu;
import com.jk.house.model.Knowledge;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface KnowZylDao {


    @Select("select b.*,k1.name from z_buyhouse b,z_knowledge k1,z_knowledge k2 where b.kid=k1.id and k1.pid=k2.id")
    List<BuyHouse> queryknowledge(Integer page, Integer rows) ;
    @Select("select b.*,k1.name from z_buyhouse b,z_knowledge k1,z_knowledge k2 where b.kid=k1.id and k1.pid=k2.id and b.id=#{id}")
    BuyHouse queryknowledgeById(Integer id);
    @Update("update z_buyhouse set click=click+1 where id=#{id}")
    void updateClick(Integer id);
    @Select("select * from z_knowledge where pid=#{id}")
    List<Knowledge> queryZhiShi(Integer id);
    @Select("select b.*,k1.name from z_buyhouse b,z_knowledge k1,z_knowledge k2 where b.kid=k1.id and k1.pid=k2.id and b.kid=#{id}")
    List<BuyHouse> querybuyHouseBykid(Integer id);
    @Insert("insert into t_kehu(kehuname,kehuphone,kehuemail,kehupassword) values(#{kehuname},#{kehuphone},#{kehuemail},#{kehupassword})")
    void addKeHeUser(Kehu kehu);
    @Select("select * from t_kehu where kehuname=#{username}")
    Kehu queryUser(String username);
}
