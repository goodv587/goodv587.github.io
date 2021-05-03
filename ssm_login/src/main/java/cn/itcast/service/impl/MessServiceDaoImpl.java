package cn.itcast.service.impl;

import cn.itcast.dao.MessDao;
import cn.itcast.pojo.Mess;
import cn.itcast.service.MessServiceDao;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class MessServiceDaoImpl implements MessServiceDao {
    @Autowired
    private MessDao messDao;
  
    @Override
    public List<Mess> messSelect(String receiveUser) {

        List<Mess> mess = messDao.messSelect(receiveUser);
        return mess;

    }

    @Override
    public Mess selectById(int mid) {
        return messDao.selectById(mid);
    }

    @Override
    public void sendInfo(Mess mess) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
      
        Date date = new Date();
        // 格式化日期
        String sendTime = sdf.format(date);
        try {
            // 发送时间
            Date date2 = sdf.parse(sendTime);
            System.out.println(sdf.format(date2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        mess.setSendTime(sendTime);
        messDao.sendInfo(mess);
        System.out.println(mess);
    }

    @Override
    public void removeInfo(int mid) {
        messDao.removeInfo(mid);
    }
    @Override
    public void updateRead(Mess mess) {
    	messDao.updateRead(mess);
    }
}
