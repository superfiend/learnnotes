package xm.learn.jsp.bean;

// �û�ʵ����
public class User {

	// �û���
	private String username;

	// �û�����
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