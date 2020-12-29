package czu.qty.bookshop.controller;

import czu.qty.bookshop.pojo.Book;
import czu.qty.bookshop.pojo.BookInfo;
import czu.qty.bookshop.pojo.BookKind;
import czu.qty.bookshop.service.IBookInfoService;
import czu.qty.bookshop.service.IBookKindService;
import czu.qty.bookshop.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @create 2020-12-26-14:46
 */
@Controller
public class DefaultController {

    @Autowired
    private IBookKindService bookKindService;

    @Autowired
    private IBookService bookService;

    @Autowired
    private IBookInfoService bookInfoService;

    @GetMapping("/index")
    public String indexPage(HttpSession session){
        List<BookKind> kinds = bookKindService.getAllBookKind();
        session.setAttribute("kinds",kinds);
        List<Book> allBook = bookService.getAllBook();
        session.setAttribute("books",allBook);
        return "/index";
    }

    @GetMapping("/cart")
    public String goCart(HttpSession session){
        int i=7;
        List<BookInfo> bookInfos = bookInfoService.getAllBookInfo();
        session.setAttribute("bookInfos",bookInfos);
        return "/WEB-INF/pages/cart/cart";
    }

    @GetMapping("/cart1")
    public String goCart1(HttpSession session){
        return "/WEB-INF/pages/cart/cart";
    }

    @RequestMapping("/paging")
    public String getPaging(Integer typeId, @RequestParam(defaultValue = "1") Integer pageNum, @RequestParam(defaultValue = "3") Integer pageSize, HttpServletRequest request){


        return "";
    }

}
