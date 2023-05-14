package com.jr.service;

import com.jr.domain.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {

	//添加
    int addBook(Books books);

    //删除
    int deleteBookById(int id);


    //修改
    int updateBook(Books books);

    //根据ID查询
    Books queryBookById(int id);


    //查所有
    List<Books> queryAllBook();

    // 根据书名查询
    Books queryBookByName(String bookName);


}
