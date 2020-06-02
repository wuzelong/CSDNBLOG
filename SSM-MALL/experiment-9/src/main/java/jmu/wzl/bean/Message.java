package jmu.wzl.bean;

public class Message {
    private Integer mid;

    private Integer uid;

    private Integer pid;

    private String title;

    private String content;

    private String time;

    private Integer revertcount=0;

    private User user;
    
    private Product product;
    
	@Override
	public String toString() {
		return "Message [mid=" + mid + ", uid=" + uid + ", pid=" + pid + ", title=" + title + ", content=" + content
				+ ", time=" + time + ", revertcount=" + revertcount + ", user=" + user + ", product=" + product + "]";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
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

    public Integer getRevertcount() {
        return revertcount;
    }

    public void setRevertcount(Integer revertcount) {
        this.revertcount = revertcount;
    }
}