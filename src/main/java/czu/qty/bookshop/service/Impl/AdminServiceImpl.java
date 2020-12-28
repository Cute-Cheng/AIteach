package czu.qty.bookshop.service.Impl;

import czu.qty.bookshop.mapper.AdminMapper;
import czu.qty.bookshop.pojo.Admin;
import czu.qty.bookshop.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements IAdminService {

    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin adminLogin(Integer id, String password) {
        Admin admin=adminMapper.adminLogin(id,password);

        return admin;
    }
}
