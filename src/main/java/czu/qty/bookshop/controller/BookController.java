package czu.qty.bookshop.controller;

import czu.qty.bookshop.mapper.BookMapper;
import czu.qty.bookshop.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @create 2020-12-27-1:18
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookMapper bookMapper;

    //本功能已在defaultController中实现
    @GetMapping("/books")
    public String getAllBooks(HttpSession session){
        List<Book> allBook = bookMapper.getAllBook();
        session.setAttribute("books",allBook);
        return "";
    }

    @GetMapping("/detail")
    public String getBookDetail(HttpServletRequest request,String b_id){
        Book book = bookMapper.getBookById(b_id);
        request.setAttribute("bookDetail",book);
        return "/WEB-INF/pages/book/bookdetail";
    }

    @GetMapping("/bookkind")
    public String getBookByKind(String f_name,HttpSession session){
        List<Book> bookByKind = bookMapper.getBookByKind(f_name);
        session.setAttribute("books", bookByKind);
        return "/index";
    }

    @GetMapping("/search")
    public String seachByName(String b_name,HttpSession session){
        List<Book> books = bookMapper.getBookByNameFuzzy(b_name);
        session.setAttribute("books",books);
        return "/index";
    }

}
