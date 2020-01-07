package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.java.mapper.BookMapper;
import com.java.pojo.Book;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：丁鹏
 * date：17:18
 */
@Service
public class BookServiceImpl implements com.java.service.BookService {

    @Autowired
    private BookMapper bookMapper;


    /**
     * 查询所有
     * @return
     */
    @Override
    public List<Book> findBooks(){

        return bookMapper.list();
    }

    @Override
    public Book query(int id) {

        return null;
    }


}
