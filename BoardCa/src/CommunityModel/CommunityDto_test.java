package CommunityModel;

import java.util.Date;

public class CommunityDto {
	int num;
	String title;
	String writer_id;
	String written_date;
	String content;
	int heart;
	int views;
	int comment_num;
	public CommunityDto() {
		this(0,"","",null,"",0,0,0);
	}
	public CommunityDto(int num, String title, String writer_id, String written_date, String content, int heart, int views, int comment_num) {
		this.num = num;
		this.title = title;
		this.writer_id = writer_id;
		this.written_date = written_date;
		this.content = content;
		this.heart = heart;
		this.views = views;
		this.comment_num = comment_num;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getWritten_date() {
		return written_date;
	}
	public void setWritten_date(String written_date) {
		this.written_date = written_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	@Override
	public String toString() {
		return "CommunityDto [num=" + num + ", title=" + title + ", writer_id=" + writer_id + ", written_date="
				+ written_date + ", content=" + content + ", heart=" + heart + ", views=" + views + ", comment_num="
				+ comment_num + "]";
	}

}
