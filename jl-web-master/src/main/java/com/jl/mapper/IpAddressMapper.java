package com.jl.mapper;

import com.jl.pojo.IpFrom;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface IpAddressMapper {
    @Insert("insert into operate(ip,userid,Operate,date) values(#{ip}, #{userid},#{Operate},#{date})")
    void setip(IpFrom ipFrom);
}
