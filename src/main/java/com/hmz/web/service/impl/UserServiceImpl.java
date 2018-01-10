package com.hmz.web.service.impl;


import com.hmz.web.dao.UserMapper;
import com.hmz.web.model.User;
import com.hmz.web.model.UserExample;
import com.hmz.web.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Resource
    private UserMapper userMapper;



    @Override
    public boolean Userlogin(String username, String password) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        criteria.andPasswordEqualTo(password);
        List<User> list = userMapper.selectByExample(userExample);
        if (list.size() > 0) {
            return true;
        }
        return false;


    }

    @Override
    public boolean insertUser(String username, String password) {
        User user = new User(username, password, 100.0);
        if (userMapper.insertSelective(user) == 1) {
            return true;
        }
        return false;
    }
}
