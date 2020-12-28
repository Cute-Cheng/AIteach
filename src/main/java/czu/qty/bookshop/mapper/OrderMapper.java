package czu.qty.bookshop.mapper;

import com.sun.org.apache.xpath.internal.operations.Or;
import czu.qty.bookshop.pojo.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @create 2020-12-28-14:17
 */
@Mapper
@RequestMapping("/order")
public interface OrderMapper{  //添加订单
    //删除订单
    //查看所有订单
    @Select("select * from `order`")
    public List<Order> getAllOrder();
    //根据订单id查看订单
    //查看订单详情

}
