package com.java.mapper;

import com.java.pojo.Book;
import com.java.pojo.User;

import java.util.List;

public interface UserMapper {

    //新增
    public int add(User user);
    //删除
    public void delete(int id);
    //查询
    public User get(int id);
    //修改
    public int update(User user);

    public List<User> list();

    public List<User> finduser(User user);

    User login(String username);
}
