package com.java.service.impl;

import com.java.mapper.UserMapper;
import com.java.pojo.User;
import com.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findUsers() {
        return userMapper.list();
    }

    @Override
    public User query(int id) {
        return userMapper.get(id);
    }

    @Override
    public void delete(int id) {
        userMapper.delete(id);
    }

    @Override
    public void add(User user) {
        userMapper.add(user);
    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

    @Override
    public User login(String username) {
        return userMapper.login(username);
    }
}
