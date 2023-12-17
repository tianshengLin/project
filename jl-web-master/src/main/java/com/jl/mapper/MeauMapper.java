package com.jl.mapper;

import com.jl.pojo.Delivery;
import com.jl.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface MeauMapper {
    @Select(" SELECT rolename,roletype FROM t_role ")
    List<Map<String, Object>> getrolename();
    @Update(" Insert into t_user(name,state,time,phone,password,email) VALUES ('${name}',1,now(),'${phone}','${phone}','${email}') ")
    int addUser(User user);
    @Update("Insert into t_role(rolename) value(#{rolename})")
    int addrolename(@Param("rolename") String rolename);
    @Update(" update t_role set roletype = id where rolename = #{rolename}")
    int addroletype(@Param("rolename") String rolename);

    @Insert("insert into role_menu(rid,mid,flag) values(${roletype}, ${menuid}, 0 ) ")
    int addMenu(@Param("roletype") Integer roletype, @Param("menuid") Integer menuid);

    @Update("update role_menu set flag=1 where rid=#{roletype} and mid=#{menuid} ")
    int deleteMenu (@Param("roletype") Integer roletype, @Param("menuid") Integer menuid);

    @Select("select a.*,b.`name` from delivery a,t_user b where a.worker=b.id")
    List<Delivery> selectInoutdata();

    @Select("select name,id from t_menu")
    List<Map<String, Object>> geturl();

    @Select("SELECT count(id) from delivery where DATE_SUB(NOW(),INTERVAL 30 day)<=InTime")
    int summonth();
//    @Update("UPDATE delivery set state=#{state},timeout=#{timeout},pickupcode=#{pickupcode},worker=#{worker},piker=#{piker}  where id=#{id} ")
//    int updatetime(int id, String state, String timeout, String pickupcode, String worker, String piker);
    @Select("SELECT count(id) from delivery where DATE_SUB(NOW(),INTERVAL 30 day)<=OutTime")
    int outmonth();
    @Select("SELECT count(id) from delivery where state=3")
    int erro();
    @Select("SELECT count(id) from delivery where OutTime is null and state !=4")
    int stranded();
    @Update("Update delivery set state=3 where DATE_SUB(now(),INTERVAL 7 day)>=InTime and state=1 and OutTime is null")
    void check();
    @Select("select a.*,b.name from delivery a,t_user b where a.worker=b.id ${a}")
    List<Delivery> selectdata(String a);
    @Select("select a.*,b.rolename from t_user a,t_role b, user_role c where a.id=c.uid and b.id=c.rid ORDER BY id")
    List<User> selectUser();
    @Select("select a.*,b.rolename from t_user a,t_role b, user_role c where a.id=c.uid and b.id=c.rid ${a} ORDER BY id")
    List<User> selectUserlike(String a);
    @Update("update t_user set state=0 where id=#{id} ")
    int updateUser(Integer id);
    @Update("update t_user set password= #{psd} where id=#{id} ")
    void changepsd(Integer id, String psd);
    @Insert("insert into user_role(uid,rid) VALUES((select id from t_user where phone ='${phone}' and state=1) , ${roletype} )")
    int addUserrole(User user);
}
