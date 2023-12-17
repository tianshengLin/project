package com.jl.controller;

import com.github.pagehelper.PageInfo;
import com.jl.pojo.Delivery;
import com.jl.pojo.QueryObject;
import com.jl.pojo.TableInfo;
import com.jl.pojo.User;
import com.jl.service.impl.MeauServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    @Autowired
    private MeauServiceImpl meauService;
    //1:show userManage.html
    //输入网址http://127.0.0.1:8080/show_user_manage
    @RequestMapping("show_user_manage")
    public String showUserManage(){
        return "userManage";
    }

    @RequestMapping(value = "/show_user_manage/listpage")
    @ResponseBody
    public TableInfo getDeliveryPage(QueryObject qo, Model model){
        System.out.println(qo.toString());
        PageInfo<User> page;
        if(qo.getState()==null&qo.getAddresseePhone()==""&qo.getQ()=="") {
            System.out.println("正常查询");
            page = meauService.getUserList(qo);
        }
        else {
            System.out.println("模糊查询");
            page = meauService.selectUser(qo);

        }
        model.addAttribute("page", page);
//        System.out.println(page.getList().toString());
        return new TableInfo(page.getTotal(), page.getList());
    }
}
