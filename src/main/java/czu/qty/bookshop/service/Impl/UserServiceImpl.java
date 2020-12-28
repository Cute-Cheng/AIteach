package czu.qty.bookshop.service.Impl;

import czu.qty.bookshop.mapper.UserMapper;
import czu.qty.bookshop.pojo.User;
import czu.qty.bookshop.service.UserService;
import czu.qty.bookshop.utils.MailSend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @create 2020-12-25-22:53
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 账号密码登录
     * @param username
     * @param password
     * @return
     */
    @Override
    public int loginByNP(String username, String password) {
        User user = userMapper.loginByNP(username, password);
        if (user != null){
            return 1;
        }
        return 0;
    }

    /**
     * 验证邮箱
     * @param email
     * @return
     */
    @Override
    public int loginByEmail(String email) {
        User user = userMapper.loginByEmail(email);
        if (user != null){
            return 1;
        }
        return 0;
    }

    @Override
    public int updateUserInfo(User user) {
        return userMapper.updateUser(user.getU_name(), user.getU_password(), user.getEmail(),user.getU_id());
    }

    @Override
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    @Override
    public User getUserById(Integer u_id) {
        return userMapper.getUserById(u_id);
    }

    @Override
    public List<User> getUserByNameFuzzy(String name) {
        return userMapper.getUserFuzzy(name);
    }

    @Override
    public int delUserInfo(Integer u_id) {
        return userMapper.delUser(u_id);
    }
}
