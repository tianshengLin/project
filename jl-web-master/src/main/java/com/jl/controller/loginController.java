package com.jl.controller;

import com.jl.pojo.User;
import com.jl.service.MeauService;
import com.jl.service.impl.LoginServiceImpl;
import com.jl.util.IpAddressUtil;
import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class loginController {

    @Autowired()
    private LoginServiceImpl loginService;
    private IpAddressUtil ipAddressUtil;
    @Autowired()
    private MeauService meauService;
    @RequestMapping(value = "/login")
    public String toHome(String username, String password, Model model, HttpServletRequest request, HttpSession session){
        User user = loginService.login(username, password);
        String ipAddress = ipAddressUtil.getIpAddress(request);
        String unpw=username+","+password;
        loginService.recodeIp(ipAddress,unpw);
        if (user!=null) {
            model.addAttribute("user",user);
            session.setAttribute("user",user);
            List<Map<String,Object>> urllist=loginService.getAllUrl(user.getRoletype());
            model.addAttribute("urllist",urllist);
            session.setAttribute("urllist",urllist);
            for (int i = 0; i <urllist.size(); i++) {
                System.out.println(1);
                if(user.getRoletype()==2){
                    System.out.println(2);
                    int sum=meauService.summonth();
                    System.out.println(21);
                    model.addAttribute("sumdelivery",sum);
                    System.out.println(211);
                }
            }
            System.out.println(urllist.toString());
            return "redirect:/goodsRecords";
//            return "redirect:/main";
        }
        else {
            model.addAttribute("erro","账号密码错误");
            return "index";
        }
    }
}
