package czu.qty.bookshop.controller;

import czu.qty.bookshop.mapper.BookInfoMapper;
import czu.qty.bookshop.mapper.BookKindMapper;
import czu.qty.bookshop.mapper.BookMapper;
import czu.qty.bookshop.pojo.Book;
import czu.qty.bookshop.pojo.BookInfo;
import czu.qty.bookshop.pojo.BookKind;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @create 2020-12-26-14:46
 */
@Controller
public class DefaultController {

    @Autowired
    private BookKindMapper bookKindMapper;

    @Autowired
    private BookMapper bookMapper;

    @Autowired
    private BookInfoMapper bookInfoMapper;

    @GetMapping("/index")
    public String indexPage(HttpSession session){
        List<BookKind> kinds = bookKindMapper.getAllBookKind();
        session.setAttribute("kinds",kinds);
        List<Book> allBook = bookMapper.getAllBook();
        session.setAttribute("books",allBook);
        return "/index";
    }

    @GetMapping("/cart")
    public String goCart(HttpSession session){
        int i=0;
        List<BookInfo> bookInfos = bookInfoMapper.getAllBookInfo();
        session.setAttribute("bookInfos",bookInfos);
        return "/WEB-INF/pages/cart/cart";
    }

    @GetMapping("/cart1")
    public String goCart1(HttpSession session){
        return "/WEB-INF/pages/cart/cart";
    }





}
