package CommunityModel;

public class Heart {
	int HEART_IDX;
	int BOARD_IDX;
	int MEM_IDX;
	
	public Heart() {
		this.BOARD_IDX = 0;
		this.MEM_IDX = 0;
	}

	public Heart(int HEART_IDX,int BOARD_IDX, int MEM_IDX) {
		this.HEART_IDX = HEART_IDX;
		this.BOARD_IDX = BOARD_IDX;
		this.MEM_IDX = MEM_IDX;
	}

	public int getHEART_IDX() {
		return HEART_IDX;
	}

	public void setHEART_IDX(int hEART_IDX) {
		HEART_IDX = hEART_IDX;
	}

	public int getBOARD_IDX() {
		return BOARD_IDX;
	}

	public void setBOARD_IDX(int bOARD_IDX) {
		BOARD_IDX = bOARD_IDX;
	}

	public int getMEM_IDX() {
		return MEM_IDX;
	}

	public void setMEM_IDX(int mEM_IDX) {
		MEM_IDX = mEM_IDX;
	}

	@Override
	public String toString() {
		return "Heart [HEART_IDX=" + HEART_IDX + ", BOARD_IDX=" + BOARD_IDX + ", MEM_IDX=" + MEM_IDX + "]";
	}
	

}
