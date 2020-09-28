package CommunityModel;

import java.util.Date;

public class CommunityDto {
	int num;
	String title;
	String writer_id;
	String written_date;
	String asd;
	int views;
	int boardnum;
	
	
	public CommunityDto() {
		this(0,"","","","",0,0);
	}


	public CommunityDto(int num, String title, String writer_id, String written_date, String content, int views, int boardnum) {
		this.num = num;
		this.title = title;
		this.writer_id = writer_id;
		this.written_date = written_date;
		this.asd = content;
		this.views = views;
		this.boardnum = boardnum;
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
		return asd;
	}


	public void setContent(String content) {
		this.asd = content;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public int getBoardnum() {
		return boardnum;
	}


	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}


	@Override
	public String toString() {
		return "CommunityDto [num=" + num + ", title=" + title + ", writer_id=" + writer_id + ", written_date="
				+ written_date + ", cont=" + asd + ", views=" + views + ", boardnum=" + boardnum + "]";
	}

}
