package czu.qty.bookshop.service.Impl;

import czu.qty.bookshop.mapper.OrderMapper;
import czu.qty.bookshop.pojo.Order;
import czu.qty.bookshop.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @create 2020-12-29-12:21
 */
@Service
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public List<Order> getAllOrder() {
        return orderMapper.getAllOrder();
    }
}
