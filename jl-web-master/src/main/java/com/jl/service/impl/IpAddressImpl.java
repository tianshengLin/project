package com.jl.service.impl;

import com.jl.mapper.IpAddressMapper;
import com.jl.pojo.IpFrom;
import com.jl.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Calendar;

@Service
@Transactional
public class IpAddressImpl {
    @Autowired
    private IpAddressMapper ipAddressMapper;
    public void setIp(String ipAddress,String Operate){
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
        User user =new User();
        Integer id = user.getId();
        System.out.println(ipAddress);
        System.out.println(Operate);
        System.out.println(date);
        System.out.println(id);
        IpFrom ipFrom =new IpFrom(null,ipAddress, Operate,date,id);
        ipAddressMapper.setip(ipFrom);
    }
}
