package CommunityModel;

public class Comment {
	int num;
	String comment_id;
	String comment_content;
	String comment_date;
	
	public Comment() {
		this(0,"","","");
	}
	
	public Comment(int num, String comment_id, String comment_content, String comment_date) {
		this.num = num;
		this.comment_id = comment_id;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
	}

	@Override
	public String toString() {
		return "Comment [num=" + num + ", comment_id=" + comment_id + ", comment_content=" + comment_content
				+ ", comment_date=" + comment_date + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}

}
