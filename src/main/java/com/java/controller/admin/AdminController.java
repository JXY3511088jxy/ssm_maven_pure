package com.java.controller.admin;

import com.github.pagehelper.PageInfo;
import com.java.pojo.Book;
import com.java.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class AdminController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        return "hello sm";
    }



    @RequestMapping("/getBooks")
    public @ResponseBody List<Book> getBooks(){

        List<Book> bookList = bookService.findBooks();

        return bookList;

    }


    @RequestMapping("/listBooks")
    public String listBooks(Model model){
        List<Book> bookList = bookService.findBooks();
        model.addAttribute("bookList1",bookList);
        //往前台传数据，可以传对象，可以传List，通过el表达式 ${}可以获取到，类似于request.setAttribute("sts",sts)效果一样。
        return "admin/listBook";
    }

}
