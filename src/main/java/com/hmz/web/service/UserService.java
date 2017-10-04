package com.hmz.web.service;

public interface UserService {

    boolean Userlogin(String username, String password);

    boolean insertUser(String username, String password);
}
