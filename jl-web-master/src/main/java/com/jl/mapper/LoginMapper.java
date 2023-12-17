package com.jl.mapper;

import com.jl.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface LoginMapper {
    @Select("SELECT DISTINCT a.*,c.rolename ,c.roletype from t_user  a , user_role  b , t_role  c WHERE a.phone= #{phone} and a.password= #{password} and a.id=b.uid and b.rid=c.id")
    User login(@Param("phone") String username, @Param("password") String password);
    @Select("SELECT c.name,c.link_url FROM t_role a,role_menu b,t_menu c       WHERE a.id=b.rid and b.mid=c.id and a.roletype= #{roletype} ")
    List<Map<String,Object>> getAllUrl(@Param("roletype") Integer roletype);
    @Insert("insert into operate(ip,remark,Operate,date) values(#{ip}, #{username},'登入',#{date})")
    void recode(@Param("ip") String ipAddress, @Param("username") String username, @Param("date") String date);
}
