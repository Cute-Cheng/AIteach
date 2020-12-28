package czu.qty.bookshop.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/**
 * @create 2020-12-25-12:28
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
/**     订单
 *      o_id     varchar    订单编号
 *      o_time   Date       订单创建时间
 *      o_price  float(7,2) 订单总价
 *      u_id     int        用户id
 */
public class Order {

    private String o_id;
    private Date o_time;
    private Float o_price;
    private Integer u_id;

}
