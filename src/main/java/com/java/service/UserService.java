package com.java.service;

import com.java.pojo.Book;
import com.java.pojo.User;

import java.util.List;

public interface UserService {
    List<User> findUsers();
    User query(int id);
    void delete(int id);
    void add(User user);
    void update(User user);
    User login(String username);
}
