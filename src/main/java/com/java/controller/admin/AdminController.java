package com.java.controller.admin;

import com.github.pagehelper.PageInfo;
import com.java.pojo.Book;
import com.java.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：
 * date：
 */
@Controller
public class AdminController {

    @Autowired
    private BookService bookService;

    /**
     * 测试
     * @return
     */
    @RequestMapping("/test")
    @ResponseBody
    public String test(){
        return "hello sm";
    }


    /**
     * 查询书籍列表
     * @return
     */
    @RequestMapping("/getBooks")
    public @ResponseBody List<Book> getBooks(){

        List<Book> bookList = bookService.findBooks();

        return bookList;

    }

    /**
     * 查询书籍列表，返回到前台页面
     * @param model
     * @return
     */
    @RequestMapping("/listBooks")
    public String listBooks(Model model){
        List<Book> bookList = bookService.findBooks();
        model.addAttribute("bookList1",bookList);
        //往前台传数据，可以传对象，可以传List，通过el表达式 ${}可以获取到，类似于request.setAttribute("sts",sts)效果一样。
        return "admin/listBook";
    }

    /**
     * 删除书籍
     * @param id
     * @return
     */
    @RequestMapping("/deleteBooks")
    public String deleteBooks(int id){
        bookService.delete(id);
        return "redirect:/listBooks";
    }

    /**
     * 增加书籍
     * @param book
     * @return
     */
    @RequestMapping("/addBooks")
    public String addBooks(Book book){
        if(book != null){
            bookService.add(book);
        }
        return "redirect:/listBooks";  //重定向到书籍列表页面
    }

    /**
     * 修改页面，将修改的数据取出来展示
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/updatelistBooks")
    public String updatelistBooks(Model model,int id){
        Book book = bookService.query(id);
        model.addAttribute("book",book);
        return "admin/editbook";
    }

    /**
     * 修改
     * @param book
     * @return
     */
    @RequestMapping("updateBooks")
    public String updateBooks(Book book){
        bookService.update(book);
        return "redirect:/listBooks";
    }
}
