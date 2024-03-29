package xm.learn.jsp.bean;

// 用户实体类
public class User {

	// 用户名
	private String username;

	// 用户密码
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "{username: " + username + ", password" + password + "}";
	}
}
