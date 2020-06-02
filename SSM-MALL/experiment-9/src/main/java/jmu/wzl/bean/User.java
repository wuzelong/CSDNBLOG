package jmu.wzl.bean;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;

public class User {
    private Integer uid;

    private String password;
    
    @Pattern(regexp="(^[a-zA-Z0-9_-]{3,16}$)|(^[\u2E80-\u9FFF]{2,5})"
    		,message="×:用户名为2-5中文或3-16英文数字组合")
    private String name;

    //@Pattern(regexp="^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
    //		,message="×:邮箱格式错误")
    @Email
    private String email;

    private String role="users";


	@Override
	public String toString() {
		return "User [uid=" + uid + ", password=" + password + ", name=" + name + ", email=" + email + ", role=" + role
				+ "]";
	}

	public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role == null ? null : role.trim();
    }

}