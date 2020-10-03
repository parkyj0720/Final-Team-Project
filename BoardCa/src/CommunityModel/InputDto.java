package CommunityModel;

public class InputDto {
	String title;
	int boardnum;
	String writer_id;
	String content;
	
	public InputDto() {
		this("",0,"","");
	}
	
	public InputDto(String title, int boardnum, String writer_id, String asd) {
		this.title = title;
		this.boardnum = boardnum;
		this.writer_id = writer_id;
		this.content = asd;
	}

	@Override
	public String toString() {
		return "InputDto [title=" + title + ", boardnum=" + boardnum + ", writer_id=" + writer_id + ", asd=" + content
				+ "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

	public String getAsd() {
		return content;
	}

	public void setAsd(String asd) {
		this.content = asd;
	}


}
