package Sign;

public class MemberDto {
	int no;
	String phone,id,nickname,pw,name,gender;
	String email,rocal,state,board_gwonhan,login_gwonhan,manager_gwonhan;
	
	public MemberDto() {}
	
	public MemberDto(int no, String phone, String id, String nickname, String pw, String name, String gender,
			String email, String rocal, String state, String board_gwonhan, String login_gwonhan,
			String manager_gwonhan) {
		this.no = no;
		this.phone = phone;
		this.id = id;
		this.nickname = nickname;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.email = email;
		this.rocal = rocal;
		this.state = state;
		this.board_gwonhan = board_gwonhan;
		this.login_gwonhan = login_gwonhan;
		this.manager_gwonhan = manager_gwonhan;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRocal() {
		return rocal;
	}
	public void setRocal(String rocal) {
		this.rocal = rocal;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getBoard_gwonhan() {
		return board_gwonhan;
	}
	public void setBoard_gwonhan(String board_gwonhan) {
		this.board_gwonhan = board_gwonhan;
	}
	public String getLogin_gwonhan() {
		return login_gwonhan;
	}
	public void setLogin_gwonhan(String login_gwonhan) {
		this.login_gwonhan = login_gwonhan;
	}
	public String getManager_gwonhan() {
		return manager_gwonhan;
	}
	public void setManager_gwonhan(String manager_gwonhan) {
		this.manager_gwonhan = manager_gwonhan;
	}

	@Override
	public String toString() {
		return "MemberDto [no=" + no + ", phone=" + phone + ", id=" + id + ", nickname=" + nickname + ", pw=" + pw
				+ ", name=" + name + ", gender=" + gender + ", email=" + email + ", rocal=" + rocal + ", state=" + state
				+ ", board_gwonhan=" + board_gwonhan + ", login_gwonhan=" + login_gwonhan + ", manager_gwonhan="
				+ manager_gwonhan + "]";
	}
	
	
	
	
}
