package cn.itcast.dao;

import cn.itcast.pojo.Mess;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.junit.runners.Parameterized.Parameter;

import java.util.List;

public interface MessDao {

    /**
     * 登录后短消息查询
     * @param receiveUser
     * @return
     */
    @Select("select *from mess where receiveUser=#{receiveUser}")
    public List<Mess> messSelect(String receiveUser);

    /**
     * 
     * @param mid
     * @return
     */
    @Select("select *from mess where mid=#{mid}")
    public Mess selectById(int mid);

    /**
     * @param mess
     * @return
     */
    @Insert("insert into mess (title,content,sendUser,receiveUser,sendTime,readFlag) value(#{title},#{content},#{sendUser},#{receiveUser},#{sendTime},#{readFlag})")
    public void sendInfo(Mess mess);

    /**
     * @param mid
     */
    @Delete("delete from mess where mid=#{mid}")
    public void removeInfo(int mid);
    /*
     * @param readFlag
     * @return
     * */
    @Update("update mess set readFlag = #{readFlag} where mid=#{mid}")
    public void  updateRead(Mess mess);
}
