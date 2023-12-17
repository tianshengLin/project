package com.jl.service;

import com.github.pagehelper.PageInfo;
import com.jl.pojo.Delivery;
import com.jl.pojo.QueryObject;
import com.jl.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface MeauService {

    List<Map<String, Object>> getrolename();

    int addUser(User user);

    int updateUser(Integer id);

    int addrolename(String roletype);

    int addmenu(Integer roletype, Integer menuid);

    int deletemenu(Integer roletype, Integer menuid);

    List<Delivery> selectInoutdata();

    PageInfo<Delivery> getInoutdataList(QueryObject qo);

    List<Map<String, Object>> geturl();

    int summonth();

    int outmonth();

    int erro();

    int stranded();

    void check();

    PageInfo<Delivery> selectdata(QueryObject qo);

    PageInfo<User> getUserList(QueryObject qo);

    PageInfo<User> selectUser(QueryObject qo);
}
