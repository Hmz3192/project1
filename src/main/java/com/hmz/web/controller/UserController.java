package com.hmz.web.controller;


import com.hmz.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
@SessionAttributes("username")
public class UserController {


    @Resource
    private UserService userService;



    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    private String login(HttpSession session,String login,String pwd) {

        session.setAttribute("username", login);
        if (userService.Userlogin(login, pwd)) {
            return "main";
        }
        else
            return "index";

    }
}
