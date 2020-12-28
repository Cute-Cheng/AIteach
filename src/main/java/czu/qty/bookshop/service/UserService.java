package czu.qty.bookshop.service;

import czu.qty.bookshop.pojo.User;

import java.util.List;

/**
 * @create 2020-12-25-22:25
 */
public interface UserService {

    //账号密码登录
    public int loginByNP(String username,String password);
    //邮箱登录
    public int loginByEmail(String email);
    //更新用户信息
    public int updateUserInfo(User user);

    //查看所有用户
    public List<User> getAllUser();

    //根据id查找用户
    public User getUserById(Integer u_id);

    //根据用户名模糊查询用户
    public List<User> getUserByNameFuzzy(String name);

    //根据id删除用户信息
    public int delUserInfo(Integer u_id);
}
