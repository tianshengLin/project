package com.jl.controller;

import com.github.pagehelper.PageInfo;
import com.jl.pojo.Delivery;
import com.jl.pojo.QueryObject;
import com.jl.pojo.TableInfo;
import com.jl.service.impl.MeauServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DeliveryController {
    @Autowired
    private MeauServiceImpl meauService;
    //2:show goodsRecords.html
    //输入网址http://127.0.0.1:8080/goodsRecords
@RequestMapping("/goodsRecords")
public String goodsRecords(Model model){
//        自动检测更新异常件
        meauService.check();
    int sum=meauService.summonth();
    int out=meauService.outmonth();
    int erro=meauService.erro();
    int stranded=meauService.stranded();
    model.addAttribute("sumin",sum);
    model.addAttribute("sumout",out);
    model.addAttribute("erro",erro);
    model.addAttribute("stranded",stranded);
        return "goodsRecords";
}
    @RequestMapping(value = "/goodsRecords/listpage")
    @ResponseBody
public TableInfo getDeliveryPage(QueryObject qo, Model model){
        System.out.println(qo.toString());
        PageInfo<Delivery> page;
        if(qo.getState()==""&qo.getAddresseePhone()==null&qo.getQ()=="") {
             System.out.println("正常查询");
             page = meauService.getInoutdataList(qo);
        }
        else {
            System.out.println("模糊查询");
             page = meauService.selectdata(qo);

        }
        model.addAttribute("page", page);
        return new TableInfo(page.getTotal(), page.getList());
    }

}
