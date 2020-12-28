package czu.qty.bookshop.mapper;

import czu.qty.bookshop.pojo.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @create 2020-12-26-13:43
 */
@Mapper
public interface BookMapper {

    //获取所有图书
    @Select("select * from book")
    public List<Book> getAllBook();

    //根据图书id查询图书信息
    @Select("select * from book where b_id= #{b_id}")
    public Book getBookById(String b_id);

    //根据图书名模糊查询
    @Select("select * from book where b_name like #{b_name}")
    public List<Book> getBookByNameFuzzy(String b_name);

    //根据作者模糊查询
    @Select("select * from book where b_author like #{b_author}")
    public List<Book> getBookByAuthorFuzzy(String b_author);

    //根据类型模糊查询
    @Select("select * from book where f_name = #{f_name}")
    public List<Book> getBookByKind(String f_name);

    //删除图书
    @Delete("delete from user where b_id = #{b_id}")
    public int delBookById(String b_id);

    //修改图书信息
    @Update("update book set(b_name,b_price,f_name,b_author,b_sales,b_stock,img_path) values(#{b_name},#{b_price},#{f_name},#{b_author},#{b_sales},#{b_stock},#{img_path}) where b_id=#{b_id}")
    public int update(String b_id, String b_name, Float b_price, String f_name, String b_author, Integer b_sales, Integer b_stock, String img_path);

}
