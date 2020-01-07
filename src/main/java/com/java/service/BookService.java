package com.java.service;

import java.util.List;
import java.util.Map;

/**
 * description：
 * author：丁鹏
 * date：17:20
 */
public interface BookService {
    List<Map<String,Object>> findBooks(Integer pageNum, Integer pageSize);
}
