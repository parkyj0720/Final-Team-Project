package Member;

public class AgeRangeDto {
	
	int twenty;
	int thirty;
	int forty;
	int fifty;
	int secret;
	
	public AgeRangeDto() {
		// TODO Auto-generated constructor stub
	}

	public AgeRangeDto(int twenty, int thirty, int forty, int fifty, int secret) {
		super();
		this.twenty = twenty;
		this.thirty = thirty;
		this.forty = forty;
		this.fifty = fifty;
		this.secret = secret;
	}

	public int getTwenty() {
		return twenty;
	}

	public void setTwenty(int twenty) {
		this.twenty = twenty;
	}

	public int getThirty() {
		return thirty;
	}

	public void setThirty(int thirty) {
		this.thirty = thirty;
	}

	public int getForty() {
		return forty;
	}

	public void setForty(int forty) {
		this.forty = forty;
	}

	public int getFifty() {
		return fifty;
	}

	public void setFifty(int fifty) {
		this.fifty = fifty;
	}

	public int getSecret() {
		return secret;
	}

	public void setSecret(int secret) {
		this.secret = secret;
	}

	@Override
	public String toString() {
		return "AgeRangeDto [twenty=" + twenty + ", thirty=" + thirty + ", forty=" + forty + ", fifty=" + fifty
				+ ", secret=" + secret + "]";
	}

}
