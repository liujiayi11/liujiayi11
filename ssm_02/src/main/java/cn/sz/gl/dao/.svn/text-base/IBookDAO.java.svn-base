package cn.sz.gl.dao;

import java.util.List;

import cn.sz.gl.pojo.Book;

public interface IBookDAO {
    public void insertbook(Book book);
	public List<Book> findallbook();
	
	public Book findBookById(Integer bookid);
	/**
	 * 根据书籍编号，查询书籍价格
	 * @param bookid
	 * @return
	 */
	public Double findPriceByBookid(Integer bookid);
	public Integer maxBookid();
}
