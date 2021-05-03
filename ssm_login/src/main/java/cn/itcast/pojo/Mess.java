package cn.itcast.pojo;

import java.io.Serializable;
import java.util.List;

public class Mess implements Serializable {
	private int mid;
	private String title;
	private String content;
	private String sendUser;
	private String receiveUser;
	private String sendTime;
	private int readFlag;
	private Mess mess;
	private User user;
	private List<Mess> messList;

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSendUser() {
		return sendUser;
	}

	public void setSendUser(String sendUser) {
		this.sendUser = sendUser;
	}

	public String getReceiveUser() {
		return receiveUser;
	}

	public void setReceiveUser(String receiveUser) {
		this.receiveUser = receiveUser;
	}

	public String getSendTime() {
		return sendTime;
	}

	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}

	public int getReadFlag() {
		return readFlag;
	}

	public void setReadFlag(int readFlag) {
		this.readFlag = readFlag;
	}

	public Mess getMess() {
		return mess;
	}

	public void setMess(Mess mess) {
		this.mess = mess;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Mess> getMessList() {
		return messList;
	}

	public void setMessList(List<Mess> messList) {
		this.messList = messList;
	}
}
