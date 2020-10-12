package Mypage;

public class StarDto {

	int STAR_IDX;
	
	String STAR_CATEGORY;
	
	int MEM_IDX;
	
	int REC_IDX;
	
	int GAME_IDX;
	
	public StarDto() {
		// TODO Auto-generated constructor stub
	}

	public StarDto(int sTAR_IDX, String sTAR_CATEGORY, int mEM_IDX, int rEC_IDX, int gAME_IDX) {
		super();
		STAR_IDX = sTAR_IDX;
		STAR_CATEGORY = sTAR_CATEGORY;
		MEM_IDX = mEM_IDX;
		REC_IDX = rEC_IDX;
		GAME_IDX = gAME_IDX;
	}

	public int getSTAR_IDX() {
		return STAR_IDX;
	}

	public void setSTAR_IDX(int sTAR_IDX) {
		STAR_IDX = sTAR_IDX;
	}

	public String getSTAR_CATEGORY() {
		return STAR_CATEGORY;
	}

	public void setSTAR_CATEGORY(String sTAR_CATEGORY) {
		STAR_CATEGORY = sTAR_CATEGORY;
	}

	public int getMEM_IDX() {
		return MEM_IDX;
	}

	public void setMEM_IDX(int mEM_IDX) {
		MEM_IDX = mEM_IDX;
	}

	public int getREC_IDX() {
		return REC_IDX;
	}

	public void setREC_IDX(int rEC_IDX) {
		REC_IDX = rEC_IDX;
	}

	public int getGAME_IDX() {
		return GAME_IDX;
	}

	public void setGAME_IDX(int gAME_IDX) {
		GAME_IDX = gAME_IDX;
	}

	@Override
	public String toString() {
		return "StarDto [STAR_IDX=" + STAR_IDX + ", STAR_CATEGORY=" + STAR_CATEGORY + ", MEM_IDX=" + MEM_IDX
				+ ", REC_IDX=" + REC_IDX + ", GAME_IDX=" + GAME_IDX + "]";
	}
	
}
