package Food;

public class ReviewDto {
	private int rev_idx;
	private String rev_category;
	private String rev_content;
	private String rev_sysdate;
	private int rec_idx;
	private int game_idx;
	private int mem_idx;

	public ReviewDto() {
		this(0,"","","",0,0,0);
	}
	
	public ReviewDto(int rev_idx, String rev_category, String rev_content, String rev_sysdate, int rec_idx,
			int game_idx, int mem_idx) {
		this.rev_idx = rev_idx;
		this.rev_category = rev_category;
		this.rev_content = rev_content;
		this.rev_sysdate = rev_sysdate;
		this.rec_idx = rec_idx;
		this.game_idx = game_idx;
		this.mem_idx = mem_idx;
	}
	public int getRev_idx() {
		return rev_idx;
	}
	public void setRev_idx(int rev_idx) {
		this.rev_idx = rev_idx;
	}
	public String getRev_category() {
		return rev_category;
	}
	public void setRev_category(String rev_category) {
		this.rev_category = rev_category;
	}
	public String getRev_sysdate() {
		return rev_sysdate;
	}
	public void setRev_sysdate(String rev_sysdate) {
		this.rev_sysdate = rev_sysdate;
	}
	public int getRec_idx() {
		return rec_idx;
	}
	public void setRec_idx(int rec_idx) {
		this.rec_idx = rec_idx;
	}
	public int getGame_idx() {
		return game_idx;
	}
	public void setGame_idx(int game_idx) {
		this.game_idx = game_idx;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	@Override
	public String toString() {
		return "ReviewDto [rev_idx=" + rev_idx + ", rev_category=" + rev_category + ", rev_content=" + rev_content
				+ ", rev_sysdate=" + rev_sysdate + ", rec_idx=" + rec_idx + ", game_idx=" + game_idx + ", mem_idx="
				+ mem_idx + "]";
	}
	
}
