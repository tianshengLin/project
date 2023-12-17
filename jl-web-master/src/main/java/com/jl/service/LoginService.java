package com.jl.service;

import com.jl.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface LoginService {
    User login(String username, String password);

    List<Map<String,Object>> getAllUrl(Integer roletype);

    void recodeIp(String ipAddress, String username);
}
