package CommunityModel;

public class Heart {
	String username;
	int content_num;
	
	public Heart() {
		this("",0);
	}

	public Heart(String username, int content_num) {
		this.username = username;
		this.content_num = content_num;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getContent_num() {
		return content_num;
	}

	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}

	@Override
	public String toString() {
		return "Heart [username=" + username + ", content_num=" + content_num + "]";
	}

}
