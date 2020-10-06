package CommunityModel;

import java.sql.Timestamp;

public class Comment {
	int COMT_IDX;
	int MEM_IDX;
	String BRD_WRT_ID;
	Timestamp COMT_SYSDATE;
	String COMT_CONTENT;
	int BRD_IDX;
	
	public Comment() {
		this(0, 0, "", new Timestamp((System.currentTimeMillis()/1000L)*1000L), "", 0);
	}
	
	public Comment(int cOMT_IDX, int mEM_IDX, String bRD_WRT_ID, Timestamp cOMT_SYSDATE, String cOMT_CONTENT,
			int bRD_IDX) {
		COMT_IDX = cOMT_IDX;
		MEM_IDX = mEM_IDX;
		BRD_WRT_ID = bRD_WRT_ID;
		COMT_SYSDATE = cOMT_SYSDATE;
		COMT_CONTENT = cOMT_CONTENT;
		BRD_IDX = bRD_IDX;
	}

	public int getCOMT_IDX() {
		return COMT_IDX;
	}

	public void setCOMT_IDX(int cOMT_IDX) {
		COMT_IDX = cOMT_IDX;
	}

	public int getMEM_IDX() {
		return MEM_IDX;
	}

	public void setMEM_IDX(int mEM_IDX) {
		MEM_IDX = mEM_IDX;
	}

	public String getBRD_WRT_ID() {
		return BRD_WRT_ID;
	}

	public void setBRD_WRT_ID(String bRD_WRT_ID) {
		BRD_WRT_ID = bRD_WRT_ID;
	}

	public Timestamp getCOMT_SYSDATE() {
		return COMT_SYSDATE;
	}

	public void setCOMT_SYSDATE(Timestamp cOMT_SYSDATE) {
		COMT_SYSDATE = cOMT_SYSDATE;
	}

	public String getCOMT_CONTENT() {
		return COMT_CONTENT;
	}

	public void setCOMT_CONTENT(String cOMT_CONTENT) {
		COMT_CONTENT = cOMT_CONTENT;
	}

	public int getBRD_IDX() {
		return BRD_IDX;
	}

	public void setBRD_IDX(int bRD_IDX) {
		BRD_IDX = bRD_IDX;
	}

	@Override
	public String toString() {
		return "Comment [COMT_IDX=" + COMT_IDX + ", MEM_IDX=" + MEM_IDX + ", BRD_WRT_ID=" + BRD_WRT_ID
				+ ", COMT_SYSDATE=" + COMT_SYSDATE + ", COMT_CONTENT=" + COMT_CONTENT + ", BRD_IDX=" + BRD_IDX + "]";
	}
	
}
