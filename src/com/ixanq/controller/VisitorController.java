package com.ixanq.controller;

import com.ixanq.entity.Visitor;
import com.ixanq.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class VisitorController {
    @Autowired
    private VisitorService visitorService;

    @RequestMapping("ajaxCheck")
    @ResponseBody
    public String validate(String name ){
        Visitor visitor1 = visitorService.findByName(name);
        if(null==visitor1){
            return "yes";
        }else {
            return "no";
        }
    }

    @RequestMapping("visitorRegist")
    public String login(Visitor visitor, Model model){
       visitorService.add(visitor);
       return "forward:/visitor/visitorLogin";
    }
}
