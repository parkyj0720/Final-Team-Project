package Member;

public class GenderDto {

	int man;
	int woman;
	int secret;
	
	public GenderDto() {
		// TODO Auto-generated constructor stub
	}

	public GenderDto(int man, int woman, int secret) {
		super();
		this.man = man;
		this.woman = woman;
		this.secret = secret;
	}

	public int getMan() {
		return man;
	}

	public void setMan(int man) {
		this.man = man;
	}

	public int getWoman() {
		return woman;
	}

	public void setWoman(int woman) {
		this.woman = woman;
	}

	public int getSecret() {
		return secret;
	}

	public void setSecret(int secret) {
		this.secret = secret;
	}

	@Override
	public String toString() {
		return "GenderDto [man=" + man + ", woman=" + woman + ", secret=" + secret + "]";
	}
	
	
	
	
}
