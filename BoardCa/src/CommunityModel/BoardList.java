package CommunityModel;

public class BoardList {
	int BOARDNUM;
	String BOARDNAME;
	
	public BoardList() {
		this(0,"");
	}
	
	public BoardList(int num, String Board_name) {
		this.BOARDNUM = num;
		this.BOARDNAME = Board_name;
	}

	public int getBOARDNUM() {
		return BOARDNUM;
	}

	public void setBOARDNUM(int bOARDNUM) {
		BOARDNUM = bOARDNUM;
	}

	public String getBOARDNAME() {
		return BOARDNAME;
	}

	public void setBOARDNAME(String bOARDNAME) {
		BOARDNAME = bOARDNAME;
	}

	@Override
	public String toString() {
		return "BoardList [BOARDNUM=" + BOARDNUM + ", BOARDNAME=" + BOARDNAME + "]";
	}

}
