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
    List<Book> listBooks();
    List<Book> findBook(Book book);
    Book query(int id);
    void delete(int id);
    void add(Book book);
    void update(Book book);
}
