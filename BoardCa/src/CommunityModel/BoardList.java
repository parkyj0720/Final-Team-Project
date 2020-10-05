package CommunityModel;

public class BoardList {
	int BRD_CAT_IDX;
	String CAT_NAME;
	
	public BoardList() {
		this(0,"");
	}
	
	public BoardList(int num, String Board_name) {
		this.BRD_CAT_IDX = num;
		this.CAT_NAME = Board_name;
	}

	public int getBRD_CAT_IDX() {
		return BRD_CAT_IDX;
	}

	public void setBRD_CAT_IDX(int bRD_CAT_IDX) {
		BRD_CAT_IDX = bRD_CAT_IDX;
	}

	public String getCAT_NAME() {
		return CAT_NAME;
	}

	public void setCAT_NAME(String cAT_NAME) {
		CAT_NAME = cAT_NAME;
	}

	@Override
	public String toString() {
		return "BoardList [BRD_CAT_IDX=" + BRD_CAT_IDX + ", CAT_NAME=" + CAT_NAME + "]";
	}



}
