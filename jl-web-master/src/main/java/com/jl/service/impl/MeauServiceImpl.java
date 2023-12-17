package com.jl.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jl.mapper.MeauMapper;
import com.jl.pojo.Delivery;
import com.jl.pojo.QueryObject;
import com.jl.pojo.User;
import com.jl.service.MeauService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MeauServiceImpl implements MeauService {
    @Autowired
    private MeauMapper menuMapper;

    @Override
    public List<Map<String, Object>> getrolename() {
        return menuMapper.getrolename();
    }

    @Override
    public int addUser(User user) {
        System.out.println("impl"+user.toString());
        int flag= menuMapper.addUser(user);
        if(flag==1){
            System.out.println("rid"+user.getRoletype());
            flag=menuMapper.addUserrole(user);
        }else{
            flag=0;
        }
        return flag;
    }

    @Override
    public int updateUser(Integer id){
        System.out.println(id);
        int flag=0;
        menuMapper.updateUser(id);
        flag=1;
        return flag;
    }

    @Override
    public int addrolename(String rolename) {
        int flag = menuMapper.addrolename(rolename);
        if (flag > 0) {
            int addroletype = menuMapper.addroletype(rolename);
            return addroletype;
        } else
            return 0;
    }

    @Override
    public int addmenu(Integer roletype, Integer menuid) {
        System.out.println("Service" + roletype + menuid);
        int flag = menuMapper.addMenu(roletype, menuid);
        return flag;
    }

    @Override
    public int deletemenu(Integer roletype, Integer menuid) {
        System.out.println("Service" + roletype + menuid);
        int flag = menuMapper.deleteMenu(roletype, menuid);
        return flag;
    }

    @Override
    public List<Delivery> selectInoutdata() {
        return menuMapper.selectInoutdata();
    }

    @Override
    public PageInfo<Delivery> getInoutdataList(QueryObject qo) {
        System.out.println("进入分页查询服务器层");
        PageHelper.offsetPage(qo.getOffset(), qo.getLimit());
        List<Delivery> list = menuMapper.selectInoutdata();
//        for (int i = 0; i < list.size(); i++) {
//            Delivery delivery = list.get(i);
//            int a=menuMapper.updatetime(i+1,delivery.getState(),delivery.getTimeout(),delivery.getPickupcode(),delivery.getWorker(),delivery.getPiker());
//            System.out.println(a);
//        }
        PageInfo<Delivery> page = new PageInfo<>(list, qo.getLimit());
        return page;
    }

    @Override
    public List<Map<String, Object>> geturl() {
        return menuMapper.geturl();
    }

    @Override
    public int summonth() {
//        List<Delivery> list = menuMapper.selectInoutdata();
//        for (int i = 0; i < list.size(); i++) {
//            Delivery delivery = list.get(i);
//            int a=menuMapper.updatetime(i+1,delivery.getState(),delivery.getTimeout(),delivery.getPickupcode(),delivery.getWorker(),delivery.getPiker());
//            System.out.println(a);
//        }
        return menuMapper.summonth();
}

    @Override
    public int outmonth() {
        return menuMapper.outmonth();
    }

    @Override
    public int erro() {
        return menuMapper.erro();
    }

    @Override
    public int stranded() {
        return menuMapper.stranded();
    }

    @Override
    public void check() {
        menuMapper.check();
    }

    @Override
    public PageInfo<Delivery> selectdata(QueryObject qo) {
        System.out.println(qo.toString());
        PageHelper.offsetPage(qo.getOffset(), qo.getLimit());
        String a=" and  1=1 ";
        if(qo.getQ() !=null&qo.getQ()!=""){
            a=a+" and a.Tracking_number like '"+qo.getQ()+"%'";
        }
        if(qo.getState() !=""&qo.getState()!=null){
            System.out.println(qo.getState());
            a=a+" and a.state = "+qo.getState()+" ";
        }
        if(qo.getAddresseePhone() !=null & qo.getAddresseePhone() !=""){
            a=a+" and a.addresseePhone like '%"+qo.getAddresseePhone()+"' ";
        }
        System.out.println("开始模糊查询");
        System.out.println(a);
        List<Delivery> list = menuMapper.selectdata(a);
        System.out.println("结束模糊查询");
        PageInfo<Delivery> page = new PageInfo<>(list, qo.getLimit());
        return page;
    }

    @Override
    public PageInfo<User> getUserList(QueryObject qo) {
        System.out.println("进入分页查询服务器层");
        PageHelper.offsetPage(qo.getOffset(), qo.getLimit());
        List<User> list = menuMapper.selectUser();
        PageInfo<User> page = new PageInfo<>(list, qo.getLimit());
        return page;
    }

    @Override
    public PageInfo<User> selectUser(QueryObject qo) {
        System.out.println(qo.toString());
        PageHelper.offsetPage(qo.getOffset(), qo.getLimit());
        String a=" and  1=1 ";
        if(qo.getQ() !=null&qo.getQ()!=""){
            a=a+" and a.name like '"+qo.getQ()+"%'";
        }
        if(qo.getState() !=""&qo.getState()!=null){
            System.out.println(qo.getState());
            a=a+" and b.rolename = '"+qo.getState()+"' ";
        }
        if(qo.getAddresseePhone() !=null & qo.getAddresseePhone() !=""){
            a=a+" and a.phone like '%"+qo.getAddresseePhone()+"' ";
        }
        System.out.println("开始模糊查询");
        System.out.println(a);
        List<User> list = menuMapper.selectUserlike(a);
        System.out.println("结束模糊查询");
        PageInfo<User> page = new PageInfo<>(list, qo.getLimit());
        return page;
    }

    public void changepsd(Integer id, String psd) {
        menuMapper.changepsd(id,psd);
    }
}
