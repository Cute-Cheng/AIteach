package czu.qty.bookshop.service;

import czu.qty.bookshop.pojo.Admin;

public interface IAdminService {
    /**
     * 管理员登录
     * @param id
     * @param password
     * @return
     */
    public Admin adminLogin(Integer id, String password);
}
