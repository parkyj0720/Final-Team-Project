package CommunityModel;

public class InputDto {
	int BRD_IDX;
	String BRD_TIT;
	int CATEGORY_IDX;
	String BRD_WRT_ID;
	String BRD_CONTENT;
	
	public InputDto() {
		this(0,"",0,"","");
	}
	
	public InputDto(int BRD_IDX, String title, int boardnum, String writer_id, String BRD_CONTENT) {
		this.BRD_IDX = BRD_IDX;
		this.BRD_TIT = title;
		this.CATEGORY_IDX = boardnum;
		this.BRD_WRT_ID = writer_id;
		this.BRD_CONTENT = BRD_CONTENT;
	}
	public InputDto(String title, int boardnum, String writer_id, String BRD_CONTENT) {
		this.BRD_IDX = 0;
		this.BRD_TIT = title;
		this.CATEGORY_IDX = boardnum;
		this.BRD_WRT_ID = writer_id;
		this.BRD_CONTENT = BRD_CONTENT;
	}

	public int getBRD_IDX() {
		return BRD_IDX;
	}

	public void setBRD_IDX(int bRD_IDX) {
		BRD_IDX = bRD_IDX;
	}

	public String getBRD_TIT() {
		return BRD_TIT;
	}

	public void setBRD_TIT(String bRD_TIT) {
		BRD_TIT = bRD_TIT;
	}

	public int getCATEGORY_IDX() {
		return CATEGORY_IDX;
	}

	public void setCATEGORY_IDX(int cATEGORY_IDX) {
		CATEGORY_IDX = cATEGORY_IDX;
	}

	public String getBRD_WRT_ID() {
		return BRD_WRT_ID;
	}

	public void setBRD_WRT_ID(String bRD_WRT_ID) {
		BRD_WRT_ID = bRD_WRT_ID;
	}

	public String getBRD_CONTENT() {
		return BRD_CONTENT;
	}

	public void setBRD_CONTENT(String bRD_CONTENT) {
		BRD_CONTENT = bRD_CONTENT;
	}

	@Override
	public String toString() {
		return "InputDto [BRD_TIT=" + BRD_TIT + ", CATEGORY_IDX=" + CATEGORY_IDX + ", BRD_WRT_ID=" + BRD_WRT_ID
				+ ", BRD_CONTENT=" + BRD_CONTENT + "]";
	}



}
