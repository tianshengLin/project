package com.jl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
    @RequestMapping(value = "/")
    public String index(){
        return "index";
    }
    @RequestMapping(value = "/add")
    public String add(){
        return "add";
    }

}
