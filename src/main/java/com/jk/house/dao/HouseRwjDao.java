package com.jk.house.dao;

import com.jk.house.model.*;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface HouseRwjDao {

    //登陆
    @Select("SELECT * FROM t_kehu k WHERE k.`kehuname`=#{kehuname}")
    List<Kehu> getTestNameIsNull(Kehu kehu);

    //查询面积
    @Select("select * from t_acreage ")
    List<Acreage> queryAcreage();

    //查询楼层
    @Select("select * from t_louceng ")
    List<Louceng> queryLouCeng();

    //查询楼龄
    @Select("select * from t_louling ")
    List<Louling> queryLouLing();

    //查询价格
    @Select("select * from t_privce ")
    List<Privace> queryPrice();

    //查询用途
    @Select("select * from t_yongtu ")
    List<Yongtu> queryYongtu();

    //查询装修
    @Select("select * from t_zhuangxiu ")
    List<Zhuangxiu> queryZhuangxiu();

    //查询户型
    @Select("select * from t_unit ")
    List<Unit> queryHuxing();

    //查询朝向
    @Select("select * from t_mianxiang ")
    List<Mianxiang> queryMianxiang();

    //查询二手房源
    @Select("SELECT h.houseid,h.housezhuangxiuid,h.houseyongtuid,h.houseunitid,h.housetype,DATE_FORMAT(h.housetime,'%Y-%m-%d') housetime,h.housestuts,h.housepriceid,h.housename,h.housemianxiang,h.houseloulingid,h.housecount,h.housecircuitid,h.houseacreageid,h.housexiangqing,a.`acreagename`,c.`circuitname`,lc.`loucengname`,ll.`loulingname`,m.`mianxiangname`,p.`pricename`,u.`unitname`,yt.`yongtuname`,z.`zhuangxiuname` FROM t_house h,t_acreage a,t_louceng lc,t_louling ll,t_mianxiang m,t_privce p,t_unit u,t_yongtu yt,t_zhuangxiu z,t_circuit c where h.houseacreageid = a.`acreageid`and h.`housecircuitid`=c.`circuitid`and h.`houseloucengid`=lc.`loucengid`and h.`houseloulingid`=ll.`loulingid` and h.`housemianxiang`=m.`mianxiangid`and h.`housepriceid` =p.`priceid` and h.`houseunitid`=u.`unitid` and h.`houseyongtuid`=yt.`yongtuid`and h.`housezhuangxiuid`=z.`zhuangxiuid` and h.`housetype`=#{housetype} and h.`housestuts`=0 ORDER BY h.`housecount` DESC limit #{page},#{rows}")
    List<House> queryfangyuan(@Param("housetype") Integer housetype, @Param("page") Integer page, @Param("rows") Integer rows);

    @Select("SELECT * FROM t_circuit c WHERE c.`pid`=#{id}")
    List<Circuit> queryxianlu(Integer id);

    @Select("SELECT h.*,a.`acreagename`,c.`circuitname`,lc.`loucengname`,ll.`loulingname`,m.`mianxiangname`,p.`pricename`,u.`unitname`,yt.`yongtuname`,z.`zhuangxiuname` FROM t_house h,t_acreage a,t_louceng lc,t_louling ll,t_mianxiang m,t_privce p,t_unit u,t_yongtu yt,t_zhuangxiu z,t_circuit c where h.houseacreageid = a.`acreageid`and h.`housecircuitid`=c.`circuitid`and h.`houseloucengid`=lc.`loucengid`and h.`houseloulingid`=ll.`loulingid` and h.`housemianxiang`=m.`mianxiangid`and h.`housepriceid` =p.`priceid` and h.`houseunitid`=u.`unitid` and h.`houseyongtuid`=yt.`yongtuid`and h.`housezhuangxiuid`=z.`zhuangxiuid` and h.`housetype`=#{housetype} and h.`housestuts`=0 ORDER BY h.`housetime` DESC limit #{page},#{rows}")
    List<House> queryershouofangbydate(@Param("housetype") Integer housetype, @Param("page") Integer page, @Param("rows") Integer rows);

    @Select("SELECT h.*,a.`acreagename`,c.`circuitname`,lc.`loucengname`,ll.`loulingname`,m.`mianxiangname`,p.`pricename`,u.`unitname`,yt.`yongtuname`,z.`zhuangxiuname` FROM t_house h,t_acreage a,t_louceng lc,t_louling ll,t_mianxiang m,t_privce p,t_unit u,t_yongtu yt,t_zhuangxiu z,t_circuit c where h.houseacreageid = a.`acreageid`and h.`housecircuitid`=c.`circuitid`and h.`houseloucengid`=lc.`loucengid`and h.`houseloulingid`=ll.`loulingid` and h.`housemianxiang`=m.`mianxiangid`and h.`housepriceid` =p.`priceid` and h.`houseunitid`=u.`unitid` and h.`houseyongtuid`=yt.`yongtuid`and h.`housezhuangxiuid`=z.`zhuangxiuid` and h.=#{housetype} and h.`housestuts`=0 ORDER BY  h.`housetime` ASC limit #{page},#{rows}")
    List<House> queryershouofangbydates(@Param("housetype") Integer housetype, @Param("page") Integer page, @Param("rows") Integer rows);

    @Select("SELECT h.*,a.`acreagename`,c.`circuitname`,lc.`loucengname`,ll.`loulingname`,m.`mianxiangname`,p.`pricename`,u.`unitname`,yt.`yongtuname`,z.`zhuangxiuname` FROM t_house h,t_acreage a,t_louceng lc,t_louling ll,t_mianxiang m,t_privce p,t_unit u,t_yongtu yt,t_zhuangxiu z,t_circuit c where h.houseacreageid = a.`acreageid`and h.`housecircuitid`=c.`circuitid`and h.`houseloucengid`=lc.`loucengid`and h.`houseloulingid`=ll.`loulingid` and h.`housemianxiang`=m.`mianxiangid`and h.`housepriceid` =p.`priceid` and h.`houseunitid`=u.`unitid` and h.`houseyongtuid`=yt.`yongtuid`and h.`housezhuangxiuid`=z.`zhuangxiuid` and h.`houseid`=#{houseid}")
    House queryfangyuanbyid(Integer houseid);

    @Select("<script>"
            + "SELECT h.*,a.`acreagename`,c.`circuitname`,lc.`loucengname`,ll.`loulingname`,m.`mianxiangname`,p.`pricename`,u.`unitname`,yt.`yongtuname`,z.`zhuangxiuname` FROM t_house h,t_acreage a,t_louceng lc,t_louling ll,t_mianxiang m,t_privce p,t_unit u,t_yongtu yt,t_zhuangxiu z,t_circuit c where h.houseacreageid = a.`acreageid`and h.`housecircuitid`=c.`circuitid`and h.`houseloucengid`=lc.`loucengid`and h.`houseloulingid`=ll.`loulingid` and h.`housemianxiang`=m.`mianxiangid`and h.`housepriceid` =p.`priceid` and h.`houseunitid`=u.`unitid` and h.`houseyongtuid`=yt.`yongtuid`and h.`housezhuangxiuid`=z.`zhuangxiuid`and h.`housetype`=1 "
            + "<if test='h.housecircuitid !=null'>"
            + "and h.housecircuitid =#{h.housecircuitid}"
            + "</if>"
            + "<if test='h.houseacreageid !=null'>"
            + "and h.houseacreageid =#{h.houseacreageid}"
            + "</if>"
            + "<if test='h.houseunitid !=null'>"
            + "and h.houseunitid =#{h.houseunitid}"
            + "</if>"
            + "<if test='h.houseyongtuid !=null'>"
            + "and h.houseyongtuid =#{h.houseyongtuid}"
            + "</if>"
            + "<if test='h.houseloucengid !=null'>"
            + "and h.houseloucengid =#{h.houseloucengid}"
            + "</if>"
            + "<if test='h.housemianxiang !=null'>"
            + "and h.housemianxiang =#{h.housemianxiang}"
            + "</if>"
            + "<if test='h.houseloulingid !=null'>"
            + "and h.houseloulingid =#{h.houseloulingid}"
            + "</if>"
            + "<if test='h.housezhuangxiuid !=null'>"
            + "and h.housezhuangxiuid =#{h.housezhuangxiuid}"
            + "</if>"
            + "<if test='h.housepriceid !=null'>"
            + "and h.housepriceid =#{h.housepriceid}"
            + "</if>"
            + "</script>")
    List<House> queryershoufangbytype(@Param("h") House house);
}
