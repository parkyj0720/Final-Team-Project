package Game;

/**
 * @author Kosmo_14
 *
 */
public class GameDto {
	int GameNo;
	String DETAILIMG;
	String Title;
	String VideoId;
	String propose;
	public GameDto() {
		this(0,"","","","");
	}
	
	
	public GameDto(int gameNo, String dETAILIMG, String title, String videoId, String propose) {
		GameNo = gameNo;
		DETAILIMG = dETAILIMG;
		Title = title;
		VideoId = videoId;
		this.propose = propose;
	}


	public int getGameNo() {
		return GameNo;
	}
	public void setGameNo(int gameNo) {
		GameNo = gameNo;
	}
	public String getDETAILIMG() {
		return DETAILIMG;
	}
	public void setDETAILIMG(String dETAILIMG) {
		DETAILIMG = dETAILIMG;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getVideoId() {
		return VideoId;
	}
	public void setVideoId(String videoId) {
		VideoId = videoId;
	}
	public String getPropose() {
		return propose;
	}
	public void setPropose(String propose) {
		this.propose = propose;
	}


	@Override
	public String toString() {
		return "GameDto [GameNo=" + GameNo + ", DETAILIMG=" + DETAILIMG + ", Title=" + Title + ", VideoId=" + VideoId
				+ ", propose=" + propose + "]";
	}
	
	
	
}
