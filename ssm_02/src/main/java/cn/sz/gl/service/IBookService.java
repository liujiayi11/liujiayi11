package cn.sz.gl.service;

import java.util.List;

import cn.sz.gl.pojo.Book;

public interface IBookService {
	public void addbook(Book book);
	public List<Book> findall();
	
	public Book findBookById(Integer bookid);
	public Integer maxBookid();
}
