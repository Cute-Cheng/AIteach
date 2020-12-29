package czu.qty.bookshop.service.Impl;

import czu.qty.bookshop.mapper.BookMapper;
import czu.qty.bookshop.pojo.Book;
import czu.qty.bookshop.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @create 2020-12-29-12:07
 */
@Service
public class BookServiceImpl implements IBookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Book> getAllBook() {
        return bookMapper.getAllBook();
    }

    @Override
    public Book getBookById(String b_id) {
        return bookMapper.getBookById(b_id);
    }

    @Override
    public List<Book> getBookByNameFuzzy(String b_name) {
        return bookMapper.getBookByNameFuzzy(b_name);
    }

    @Override
    public List<Book> getBookByAuthorFuzzy(String b_author) {
        return bookMapper.getBookByAuthorFuzzy(b_author);
    }

    @Override
    public List<Book> getBookByKind(String f_name) {
        return bookMapper.getBookByKind(f_name);
    }

    @Override
    public int delBookById(String b_id) {
        return bookMapper.delBookById(b_id);
    }

    @Override
    public int update(String b_id, String b_name, Float b_price, String f_name, String b_author, Integer b_sales, Integer b_stock, String img_path) {
        return bookMapper.update(b_id,b_name,b_price,f_name,b_author,b_sales,b_stock,img_path);
    }
}
