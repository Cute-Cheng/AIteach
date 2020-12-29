package czu.qty.bookshop.service;

import czu.qty.bookshop.pojo.Order;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @create 2020-12-29-12:20
 */
public interface IOrderService {

    //获取所有Order
    public List<Order> getAllOrder();

}
