package czu.qty.bookshop.controller;


import czu.qty.bookshop.pojo.Admin;
import czu.qty.bookshop.pojo.Result;
import czu.qty.bookshop.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {

    @Autowired
    IAdminService adminService;

    @GetMapping("/admin")
    public String toAdminLogin(){
        return "/WEB-INF/pages/manager/astorlogin";
    }
    @GetMapping("/admin/administrator")
    public String toAdminManager(){
        return "/WEB-INF/pages/manager/administrator";
    }

    @PostMapping("/admin/login")
    @ResponseBody
    public Result adminLogin(Integer id, String password){
        Admin admin=adminService.adminLogin(id,password);
        if(admin==null){
            return new Result("404","账号密码错误",null);
        }else{
            return new Result("200","登录成功",null);
        }
    }

}
