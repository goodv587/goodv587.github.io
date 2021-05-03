package cn.itcast.service;

import cn.itcast.pojo.Mess;

import java.util.List;

public interface MessServiceDao {
    /**
     * @param receiveUser
     * @return
     */
    public List<Mess> messSelect(String receiveUser);

    /**
     * @param mid
     * @return
     */
    public Mess selectById(int mid);

    /**
     * @param mess
     */
    public void sendInfo(Mess mess);

    /**
     * @param mid
     */
    public void removeInfo(int mid);
    /**
     * @param mess
     */
    public void updateRead(Mess mess);
}
