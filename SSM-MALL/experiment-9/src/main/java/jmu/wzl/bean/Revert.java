package jmu.wzl.bean;

public class Revert {
    private Integer rid;

    private Integer mid;

    private Integer uid;

    private String content;

    private String time;
    
    private User user;
    
    @Override
	public String toString() {
		return "Revert [rid=" + rid + ", mid=" + mid + ", uid=" + uid + ", content=" + content + ", time=" + time
				+ ", user=" + user + "]";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}