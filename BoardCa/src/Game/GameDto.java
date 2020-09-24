package Game;

public class GameDto {
	int gameNo;
	String gameId;
	String gameThum;
	String gameTitle;
	String content;
	String vdieoId;
	String propose;
	String reply;

	public GameDto() {
		this(0, "", "", "", "", "", "", "");
	}

	public GameDto(int gameNo, String gameId, String gameThum, String gameTitle, String content, String vdieoId,
			String propose, String reply) {

		this.gameNo = gameNo;
		this.gameId = gameId;
		this.gameThum = gameThum;
		this.gameTitle = gameTitle;
		this.content = content;
		this.vdieoId = vdieoId;
		this.propose = propose;
		this.reply = reply;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	public String getGameId() {
		return gameId;
	}

	public void setGameId(String gameId) {
		this.gameId = gameId;
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

	public String getVdieoId() {
		return vdieoId;
	}

	public void setVdieoId(String vdieoId) {
		this.vdieoId = vdieoId;
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
		return "GameDto [gameNo=" + gameNo + ", gameId=" + gameId + ", gameThum=" + gameThum + ", gameTitle="
				+ gameTitle + ", content=" + content + ", vdieoId=" + vdieoId + ", propose=" + propose + ", reply="
				+ reply + "]";
	}
}
