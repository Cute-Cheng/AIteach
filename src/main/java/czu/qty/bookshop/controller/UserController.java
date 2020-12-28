package czu.qty.bookshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @create 2020-12-25-23:39
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("/index")
    public String toIndex(){
        return "/index";
    }

}
