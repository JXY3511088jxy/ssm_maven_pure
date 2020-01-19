package com.java.mapper;

import com.java.pojo.Book;
import org.apache.ibatis.annotations.Select;
import org.omg.CORBA.INTF_REPOS;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：丁鹏
 * date：17:16
 */
public interface BookMapper {

    /**
     * 查询所有
     * @return
     */
//    @Select("SELECT * FROM books")
//    List<Map<String,Object>> selectBooks();

    //新增
    public void add(Book book);
    //删除
    public void delete(int id);
    //查询
    public Book get(int id);
    //修改
    public void update(Book book);

    public List<Book> list();

}
