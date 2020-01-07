package com.java.controller.admin;

import com.github.pagehelper.PageInfo;
import com.java.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：丁鹏
 * date：17:12
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        return "hello sm";
    }

    @RequestMapping("/getBooks")
    public @ResponseBody List<Map<String,Object>> getBooks(Integer pageNum, Integer pageSize){

        List<Map<String, Object>> bookList = bookService.findBooks(pageNum, pageSize);
        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(bookList);

        return pageInfo.getList();

    }

}
