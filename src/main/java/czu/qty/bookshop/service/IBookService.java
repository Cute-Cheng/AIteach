package czu.qty.bookshop.service;

import czu.qty.bookshop.pojo.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @create 2020-12-29-12:05
 */
public interface IBookService {

    //获取所有图书
    public List<Book> getAllBook();

    //根据图书id查询图书信息
    public Book getBookById(String b_id);

    //根据图书名模糊查询
    public List<Book> getBookByNameFuzzy(String b_name);

    //根据作者模糊查询
    public List<Book> getBookByAuthorFuzzy(String b_author);

    //根据类型模糊查询
    public List<Book> getBookByKind(String f_name);

    //删除图书
    public int delBookById(String b_id);

    //修改图书信息
    public int update(String b_id, String b_name, Float b_price, String f_name, String b_author, Integer b_sales, Integer b_stock, String img_path);


}
