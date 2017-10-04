package com.hmz.web.controller;


import com.hmz.web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.nio.channels.FileChannel;

@Controller
@RequestMapping("/user")
@SessionAttributes("username")
public class UserController {


    @Resource
    private UserService userService;


    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    private String login(HttpSession session, String login, String pwd, HttpServletRequest request) {

        session.setAttribute("username", login);
        String mes = "用户名或密码错误！";
        request.setAttribute("mes", mes);
        if (userService.Userlogin(login, pwd)) {
            return "main";
        } else
            return "index";

    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    private String register(HttpServletRequest request,String registerUserName, String registerPassword) {
//        System.out.println("+++++++++++++++++" + registerPassword + "++++++++++" + registerUserName);
        String registermes = "注册失败！";
        request.setAttribute("registermes", registermes);
        if (userService.insertUser(registerUserName, registerPassword)) {
            return "registerSuccess";
        }
        return "index";
    }
}
