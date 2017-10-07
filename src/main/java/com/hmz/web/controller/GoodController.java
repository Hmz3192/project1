package com.hmz.web.controller;


import com.hmz.web.model.Goods;
import com.hmz.web.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/good")
public class GoodController {

    @Resource
    private GoodsService goodsService;

    @RequestMapping(value = "/toDetail")
    private String toDetail(@RequestParam("id") Integer id, HttpSession session) {
        System.out.println(id);
        Goods goods = goodsService.selectOne(id);
        session.setAttribute("good", goods);
        return "goodInfo";
    }
}
