package CommunityModel;

public class Comment {
	String writer_id;
	String written_date;
	String content;
	int content_num;
	
	public Comment() {
		this("","","",0);
	}
	
	public Comment(String writer_id, String written_date, String content, int content_num) {
		this.writer_id = writer_id;
		this.written_date = written_date;
		this.content = content;
		this.content_num = content_num;
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
	public int getContent_num() {
		return content_num;
	}
	public void setContent_num(int content_num) {
		this.content_num = content_num;
	}
	@Override
	public String toString() {
		return "Comment [writer_id=" + writer_id + ", written_date=" + written_date + ", content=" + content
				+ ", content_num=" + content_num + "]";
	}
	
}
