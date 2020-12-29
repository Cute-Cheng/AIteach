package czu.qty.bookshop.controller;

import czu.qty.bookshop.mapper.OrderMapper;
import czu.qty.bookshop.pojo.Order;
import czu.qty.bookshop.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @create 2020-12-28-14:20
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    @GetMapping("/index")
    public String showAllOrder(HttpSession session){
        List<Order> orders = orderService.getAllOrder();
        session.setAttribute("orders",orders);
        return "/WEB-INF/pages/order/order";
    }

    @GetMapping("/getDetail")
    public String getDetails(){
        return "/WEB-INF/pages/order/order_item";
    }

}
