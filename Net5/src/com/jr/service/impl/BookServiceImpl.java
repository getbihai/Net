package com.jr.service.impl;

import com.jr.dao.BookMapper;
import com.jr.domain.Books;
import com.jr.service.BookService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("BookService")
public class BookServiceImpl implements BookService{

	//serviceµ÷ÓÃdao
    private BookMapper bookMapper;

    public BookMapper getBookMapper() {
        return bookMapper;
    }

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        System.out.println("bsimpl_>updateBook=="+books);
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
