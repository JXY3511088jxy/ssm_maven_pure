package com.java.mapper;

import org.apache.ibatis.annotations.Select;

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
    @Select("SELECT * FROM books")
    List<Map<String,Object>> selectBooks();

}
