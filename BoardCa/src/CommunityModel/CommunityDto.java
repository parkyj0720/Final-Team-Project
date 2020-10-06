package CommunityModel;

import java.util.Date;

public class CommunityDto {
	int BRD_IDX;
	String BRD_TIT;
	String BRD_WRT_ID;
	String BRD_SYSDATE;
	String BRD_CONTENT;
	int BRD_VIEWS;
	int CATEGORY_IDX;
	
	
	public CommunityDto() {
		this(0,"","","","",0,0);
	}
	public CommunityDto(int BRD_IDX, String BRD_TIT, String BRD_WRT_ID, String BRD_SYSDATE, String BRD_CONTENT, int BRD_VIEWS, int CATEGORY_IDX) {
		this.BRD_IDX = BRD_IDX;
		this.BRD_TIT = BRD_TIT;
		this.BRD_WRT_ID = BRD_WRT_ID;
		this.BRD_SYSDATE = BRD_SYSDATE;
		this.BRD_CONTENT = BRD_CONTENT;
		this.BRD_VIEWS = BRD_VIEWS;
		this.CATEGORY_IDX = CATEGORY_IDX;
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
	public String getBRD_WRT_ID() {
		return BRD_WRT_ID;
	}
	public void setBRD_WRT_ID(String bRD_WRT_ID) {
		BRD_WRT_ID = bRD_WRT_ID;
	}
	public String getBRD_SYSDATE() {
		return BRD_SYSDATE;
	}
	public void setBRD_SYSDATE(String bRD_SYSDATE) {
		BRD_SYSDATE = bRD_SYSDATE;
	}
	public String getBRD_CONTENT() {
		return BRD_CONTENT;
	}
	public void setBRD_CONTENT(String bRD_CONTENT) {
		BRD_CONTENT = bRD_CONTENT;
	}
	public int getBRD_VIEWS() {
		return BRD_VIEWS;
	}
	public void setBRD_VIEWS(int bRD_VIEWS) {
		BRD_VIEWS = bRD_VIEWS;
	}
	public int getCATEGORY_IDX() {
		return CATEGORY_IDX;
	}
	public void setCATEGORY_IDX(int cATEGORY_IDX) {
		CATEGORY_IDX = cATEGORY_IDX;
	}
	@Override
	public String toString() {
		return "CommunityDto [BRD_IDX=" + BRD_IDX + ", BRD_TIT=" + BRD_TIT + ", BRD_WRT_ID=" + BRD_WRT_ID
				+ ", BRD_SYSDATE=" + BRD_SYSDATE + ", BRD_CONTENT=" + BRD_CONTENT + ", BRD_VIEWS=" + BRD_VIEWS
				+ ", CATEGORY_IDX=" + CATEGORY_IDX + "]";
	}


}
