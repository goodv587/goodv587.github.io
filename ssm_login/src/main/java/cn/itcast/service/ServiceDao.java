package cn.itcast.service;


import cn.itcast.pojo.User;
/**
 * userService 接口
 * @author 76774
 *
 */
public interface ServiceDao {
    /**
     * 注册方法
     * @param user
     */
    public void registerUser(User user);

 
    /**
         * 登录方法
     * @param user
     * @return
     */
    public boolean login(User user);
    /**
         * 更新用户
     */
    public void update(User user);
}
