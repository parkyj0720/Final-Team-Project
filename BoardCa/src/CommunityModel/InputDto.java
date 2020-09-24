package CommunityModel;

public class InputDto {
	String title;
	String community;
	String username;
	String content;
	
	public InputDto() {
		this("","","","");
	}
	
	public InputDto(String title, String community, String username, String content) {
		this.title = title;
		this.community = community;
		this.username = username;
		this.content = content;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCommunity() {
		return community;
	}
	public void setCommunity(String community) {
		this.community = community;
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
		return "InputDto title=" + title + ", community=" + community + ", username=" + username + ", content="
				+ content;
	}
	

}
