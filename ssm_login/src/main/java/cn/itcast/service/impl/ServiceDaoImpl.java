package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.pojo.User;
import cn.itcast.service.ServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * 
 * @author 76774
 *
 */
@Service
public class ServiceDaoImpl implements ServiceDao {
    @Autowired
    @Qualifier("userDao")
    private UserDao userDao;
    @Override
    public void registerUser(User user) {
        userDao.registerUser(user);
    }

    @Override
    public boolean login(User user) {
        // 判断用户是否存在，不为空则存在
       if (userDao.selectUser(user) != null){
           return true;
       }else {
           return false;
       }
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

}
