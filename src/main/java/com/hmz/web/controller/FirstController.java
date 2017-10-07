package com.hmz.web.controller;


import com.hmz.web.dao.GoodsMapper;
import com.hmz.web.model.Goods;
import com.hmz.web.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller

public class FirstController {


    @Resource
    GoodsService goodsService;


    @RequestMapping(value = "/")
    private String login() {
        return "main";
    }

    @RequestMapping(value = "/toMain")
    private String toMain() {
        return "main";
    }

    @RequestMapping(value = "/toLogin")
    private String toLogin() {
        return "index";
    }


    @RequestMapping(value = "/toList")
    private String toList(@RequestParam("kind") Integer kind, Model model) {
        /* kind
        0 :今日推荐
        1 ： 拍卖会
        2 ： 艺术品
        3 ： 名表
        4 ： 珠宝
        5 ： 奢侈品*/
//        System.out.println(kind);
        List<Goods> goods = new ArrayList<>();
        goods = goodsService.selectByKind(kind);
        model.addAttribute("goodList", goods);
        model.addAttribute("total", goods.size());
        if (kind == 0) {
            model.addAttribute("position", "推荐列表");
        } else if (kind == 1) {
            model.addAttribute("position", "拍卖会列表");
        } else if (kind == 2) {
            model.addAttribute("position", "艺术品列表");

        } else if (kind == 3) {
            model.addAttribute("position", "名表列表");

        } else if (kind == 4) {
            model.addAttribute("position", "珠宝列表");

        } else if (kind == 5) {
            model.addAttribute("position", "奢侈品列表");

        }

        return "list";
    }
}
