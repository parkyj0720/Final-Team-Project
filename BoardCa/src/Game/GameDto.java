package Game;

public class GameDto {
	int gameNo;
	String gameThum;
	String gameTitle;
	String content;
	String vdieo;
	String propose;
	String reply;

	public GameDto() {
		this(0, "", "", "", "", "", "");
	}

	public GameDto(int gameNo, String gameThum, String gameTitle, String content, String vdieo, String propose,
			String reply) {
		this.gameNo = gameNo;
		this.gameThum = gameThum;
		this.gameTitle = gameTitle;
		this.content = content;
		this.vdieo = vdieo;
		this.propose = propose;
		this.reply = reply;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	public String getGameThum() {
		return gameThum;
	}

	public void setGameThum(String gameThum) {
		this.gameThum = gameThum;
	}

	public String getGameTitle() {
		return gameTitle;
	}

	public void setGameTitle(String gameTitle) {
		this.gameTitle = gameTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getVdieo() {
		return vdieo;
	}

	public void setVdieo(String vdieo) {
		this.vdieo = vdieo;
	}

	public String getPropose() {
		return propose;
	}

	public void setPropose(String propose) {
		this.propose = propose;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "GameDto [gameNo=" + gameNo + ", gameThum=" + gameThum + ", gameTitle=" + gameTitle + ", content="
				+ content + ", vdieo=" + vdieo + ", propose=" + propose + ", reply=" + reply + "]";
	}

}
