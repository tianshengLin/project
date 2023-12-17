package com.jl.controller;

import com.github.pagehelper.PageInfo;
import com.jl.pojo.Delivery;
import com.jl.pojo.User;
import com.jl.service.impl.IpAddressImpl;
import com.jl.service.impl.MeauServiceImpl;
import com.jl.util.IpAddressUtil;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class meauController {

    @Autowired
    private MeauServiceImpl meauService;
    @Autowired
    private IpAddressImpl ipAddressImp;

    @RequestMapping(value = "/rightsmanagements")
    public String managementrights(HttpSession session){
        List<Map<String,Object>> list= meauService.getrolename();
        System.out.println(list.toString());
        List<Map<String,Object>> urllist= meauService.geturl();
        session.setAttribute("m_list",list);
        session.setAttribute("m_urllist",urllist);
        System.out.println(urllist.toString());
        return "managementrights";
    }
    @RequestMapping("/changepsd")
    public String changepsd(String psd, String psd2, Model model, HttpSession session){
        if(psd !=null &&psd2 != null &&psd.equals(psd2)){
            User user = (User)session.getAttribute("user");
            System.out.println(user.toString());
            meauService.changepsd(user.getId(),psd);
            model.addAttribute("state","修改成功");
        }
        else {
            model.addAttribute("state","两次密码不一致或者为空");
        }
        return "index";

    }
    @RequestMapping(value = "/adduser")
    public String addUser(Model model, User user, HttpServletRequest request){
        System.out.println(user.toString());
//    public String addUser(Model model,HttpServletRequest request,String name){
//        System.out.println(name);
//        int flag=0;
        String ipAddress = IpAddressUtil.getIpAddress(request);
        ipAddressImp.setIp(ipAddress,"添加用户");
        int flag=meauService.addUser(user);
        System.out.println("增加成功");
        if(flag>0){
            model.addAttribute("state","添加成功");
        }
        else {
            model.addAttribute("state","添加失败,用户已经存在");
        }
        return "managementrights";
    }

    @RequestMapping(value="/delUser")
    public String deleteUser(Model model, String id){
        System.out.println("delete"+id);
        int flag=meauService.updateUser(Integer.valueOf(id));
        if(flag>0){
            model.addAttribute("state","删除成功,账号状态为离职");
        }
        else {
            model.addAttribute("state","删除失败");
        }
        return "userManage";
    }
    /*
    添加角色
     */
    @RequestMapping("/addrolename")
    public String addroletype(Model model, String rolename){
        int flag=meauService.addrolename(rolename);
        if(flag>0){
            model.addAttribute("state1","添加成功");
        }
        else {
            model.addAttribute("state1","添加失败,角色已经存在");
        }
        return "managementrights";
    }
    /*\
    增加菜单
     */
    @RequestMapping("/addmenu")
    public String addmenu(Model model, Integer flag, String addroletype, String addmenuid){
        System.out.println(flag+addroletype+addmenuid);
        if(flag==1){
            int addmenu = meauService.addmenu(Integer.valueOf(addroletype), Integer.valueOf(addmenuid));
            if(addmenu >0){
                model.addAttribute("state2","添加成功");
            }else{
                model.addAttribute("state2","添加失败");
            }
        } else if(flag==0){
            int delmenu=meauService.deletemenu(Integer.valueOf(addroletype),Integer.valueOf(addmenuid));
            if(delmenu>0){
                model.addAttribute("state2","删除成功");
            }else{
                model.addAttribute("state2","删除失败");
            }
        }
        return "managementrights";
    }



}
