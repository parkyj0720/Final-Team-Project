package CommunityModel;

public class InputDto {
	String title;
	int community_num;
	String username;
	String content;
	
	public InputDto() {
		this("",0,"","");
	}
	
	public InputDto(String title, int community_num, String username, String content) {
		this.title = title;
		this.community_num = community_num;
		this.username = username;
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getCommunity_num() {
		return community_num;
	}

	public void setCommunity_num(int community_num) {
		this.community_num = community_num;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "InputDto [title=" + title + ", community_num=" + community_num + ", username=" + username + ", content="
				+ content + "]";
	}
}
