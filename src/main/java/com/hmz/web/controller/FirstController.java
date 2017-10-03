package com.hmz.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller

public class FirstController {


    @RequestMapping(value = "/")
    private String login() {
            return "index";

    }
}
