package com.jl.service.impl;

import com.jl.mapper.LoginMapper;
import com.jl.pojo.User;
import com.jl.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Calendar;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;


    @Override
    public User login(String username, String password) {
        return loginMapper.login(username,password);
    }

    @Override
    public List<Map<String,Object>> getAllUrl(Integer roletype) {

        return loginMapper.getAllUrl(roletype);
    }

    @Override
    public void recodeIp(String ipAddress, String username) {
        //创建Calendar对象
        Calendar cal=Calendar.getInstance();

        //用Calendar类提供的方法获取年、月、日、时、分、秒
        int year  =cal.get(Calendar.YEAR);   //年
        int month =cal.get(Calendar.MONTH)+1;  //月  默认是从0开始  即1月获取到的是0
        int day   =cal.get(Calendar.DAY_OF_MONTH);  //日，即一个月中的第几天
        int hour  =cal.get(Calendar.HOUR_OF_DAY);  //小时
        int minute=cal.get(Calendar.MINUTE);   //分
        int second=cal.get(Calendar.SECOND);  //秒

        //拼接成字符串输出
        String date=year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
        System.out.println("当前时间是---->"+date);
        loginMapper.recode(ipAddress,username,date);
    }




}
