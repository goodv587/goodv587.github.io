package cn.itcast.pojo;

public class Message {
    private String msg;
    private User user;

    public Message(User user) {
        this.user = user;
    }

    public Message(String msg) {
        this.msg = msg;
    }

    public Message() {
    }

    public Message(String msg, User user) {
        this.msg = msg;
        this.user = user;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
