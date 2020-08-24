package CommunityModel;

public class CommunityDto {
	int Community_num;
	String Community_id;
	String Community_title;
	String Community_userId;
	String Community_date;
	String Community_content;
	int Community_views;
	int Community_like;
	
	public CommunityDto() {
		this(0,"","","","","",0);
	}

	public CommunityDto(int Community_num, String Community_id, String Community_title, String Community_userId, String Community_date, String Community_content, int Community_like) {
		this.Community_num = Community_num;
		this.Community_id = Community_id;
		this.Community_title = Community_title;
		this.Community_userId = Community_userId;
		this.Community_date = Community_date;
		this.Community_content = Community_content;
		this.Community_like = Community_views;
		this.Community_like = Community_like;
	}

	public String getCommunity_id() {
		return Community_id;
	}

	public void setCommunity_id(String community_id) {
		Community_id = community_id;
	}

	public String getCommunity_title() {
		return Community_title;
	}

	public void setCommunity_title(String community_title) {
		Community_title = community_title;
	}

	public String getCommunity_userId() {
		return Community_userId;
	}

	public void setCommunity_userId(String community_userId) {
		Community_userId = community_userId;
	}

	public String getCommunity_date() {
		return Community_date;
	}

	public void setCommunity_date(String community_date) {
		Community_date = community_date;
	}

	public String getCommunity_content() {
		return Community_content;
	}

	public void setCommunity_content(String community_content) {
		Community_content = community_content;
	}

	public int getCommunity_like() {
		return Community_like;
	}

	public void setCommunity_like(int community_like) {
		Community_like = community_like;
	}

	public int getCommunity_num() {
		return Community_num;
	}

	public void setCommunity_num(int community_num) {
		Community_num = community_num;
	}

	public int getCommunity_views() {
		return Community_views;
	}

	public void setCommunity_views(int community_views) {
		Community_views = community_views;
	}

	@Override
	public String toString() {
		return "CommunityDto [Community_num=" + Community_num + ", Community_id=" + Community_id + ", Community_title="
				+ Community_title + ", Community_userId=" + Community_userId + ", Community_date=" + Community_date
				+ ", Community_content=" + Community_content + ", Community_views=" + Community_views
				+ ", Community_like=" + Community_like + "]";
	}



	


}
