package com.jr.service.impl;

import javax.annotation.Resource;

import com.jr.dao.UserMapper;
import com.jr.domain.Users;

import com.jr.service.UserService;
import org.springframework.stereotype.Service;




@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public Users login(Users user) {
        return userMapper.login(user);
    }

}
