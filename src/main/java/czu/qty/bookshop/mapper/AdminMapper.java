package czu.qty.bookshop.mapper;

import czu.qty.bookshop.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface AdminMapper {

    /**
     * 管理员登录
     * @param id
     * @param password
     * @return
     */
    public Admin adminLogin(@Param("id") Integer id, @Param("password") String password);

}
