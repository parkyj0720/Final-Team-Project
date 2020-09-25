package CommunityModel;

public class InputDto {
	String title;
	int boardnum;
	String writer_id;
	String asd;
	
	public InputDto() {
		this("",0,"","");
	}
	
	public InputDto(String title, int boardnum, String writer_id, String asd) {
		this.title = title;
		this.boardnum = boardnum;
		this.writer_id = writer_id;
		this.asd = asd;
	}

	@Override
	public String toString() {
		return "InputDto [title=" + title + ", boardnum=" + boardnum + ", writer_id=" + writer_id + ", asd=" + asd
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
		return asd;
	}

	public void setAsd(String asd) {
		this.asd = asd;
	}


}
