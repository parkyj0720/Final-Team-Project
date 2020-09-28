package Game;

/**
 * @author Kosmo_14
 *
 */
public class GameDto {
	int GAME_IDX;
	String GAME_IMG;
	String GAME_TIT;
	String GAME_VIDEO;
	String GAME_MINI;
	String propose;
	public GameDto() {
		this(0,"","","","","");
	}
	public GameDto(int gAME_IDX, String gAME_IMG, String gAME_TIT, String gAME_VIDEO, String gAME_MINI,String propose) {
		super();
		GAME_IDX = gAME_IDX;
		GAME_IMG = gAME_IMG;
		GAME_TIT = gAME_TIT;
		GAME_VIDEO = gAME_VIDEO;
		GAME_MINI = gAME_MINI;
		this.propose = propose;
	}
	public int getGAME_IDX() {
		return GAME_IDX;
	}
	public void setGAME_IDX(int gAME_IDX) {
		GAME_IDX = gAME_IDX;
	}
	public String getGAME_IMG() {
		return GAME_IMG;
	}
	public void setGAME_IMG(String gAME_IMG) {
		GAME_IMG = gAME_IMG;
	}
	public String getGAME_TIT() {
		return GAME_TIT;
	}
	public void setGAME_TIT(String gAME_TIT) {
		GAME_TIT = gAME_TIT;
	}
	public String getGAME_VIDEO() {
		return GAME_VIDEO;
	}
	public void setGAME_VIDEO(String gAME_VIDEO) {
		GAME_VIDEO = gAME_VIDEO;
	}
	public String getGAME_MINI() {
		return GAME_MINI;
	}
	public void setGAME_MINI(String gAME_MINI) {
		GAME_MINI = gAME_MINI;
	}
	public String getPropose() {
		return propose;
	}
	public void setPropose(String propose) {
		this.propose = propose;
	}
	@Override
	public String toString() {
		return "GameDto [GAME_IDX=" + GAME_IDX + ", GAME_IMG=" + GAME_IMG + ", GAME_TIT=" + GAME_TIT + ", GAME_VIDEO="
				+ GAME_VIDEO + ", GAME_MINI=" + GAME_MINI + ", propose=" + propose + "]";
	}
	

}
