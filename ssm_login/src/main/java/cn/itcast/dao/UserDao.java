package cn.itcast.dao;

import cn.itcast.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserDao {
    /**
     * 注册功能，
     * @param user
     */

    @Insert("insert into user (uname,upass,email) value(#{uname},#{upass},#{email})")
    void registerUser(User user);

    /**
     * 登录是查询是不是有这个已经注册的用户
     * @param uname
     * @return
     */
    @Select("select * from user where uname=#{uname}")
    User ajaxSelect(String uname);

    /**
     * 登录时判断用户名和密码是否存在或正确
     * @param user
     * @return
     */
    @Select("select *from user where uname=#{uname} and upass=#{upass}")
    User selectUser(User user);

    /**
     * 修改密码
     * @param user
     */
    @Update("update user set upass = #{upass} where uname = #{uname}")
    void update(User user);
}
