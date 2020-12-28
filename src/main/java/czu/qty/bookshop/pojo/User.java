package czu.qty.bookshop.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @create 2020-12-25-12:24
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
/**
 * u_id         int 用户id
 * u_name       varchar 用户name
 * u_password   varchar 密码
 * email        varchar 邮箱
 * power        int 用户权限
 */
public class User {

    private Integer u_id;
    private String u_name;
    private String u_password;
    private String email;
    private Integer power;

}
