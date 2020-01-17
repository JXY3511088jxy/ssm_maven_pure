package com.java.service;

import com.java.pojo.Book;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：丁鹏
 * date：17:20
 */
public interface BookService {
    List<Book> findBooks();
    Book query(int id);
    void delete(int id);
}
