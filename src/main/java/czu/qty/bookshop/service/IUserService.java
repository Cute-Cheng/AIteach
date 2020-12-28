package czu.qty.bookshop.service;

import czu.qty.bookshop.pojo.User;

public interface IUserService {
    /**
     * 登录业务 - 根据邮箱查找用户,如果查找不到,则返回null,否则返回表中的单行数据
     * @param email
     * @return
     */
    User login(String email);
    User login1(String email, String password);
}
