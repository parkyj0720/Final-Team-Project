package App;

import java.sql.Timestamp;

public class AppDto {

	int mem_idx;
	String mem_id, mem_nickname, mem_pw, mem_gender, mem_age_group;
	String mem_email, mem_rocal, mem_state;
	int mem_mng_gwonhan, mem_login_gwonhan, mem_board_gwonhan;
	Timestamp MEM_SYSDATE;
	
	public AppDto() {
	}

	public AppDto(int mem_idx, String mem_id, String mem_nickname, String mem_pw, String mem_gender,
			String mem_age_group, String mem_email, String mem_rocal, String mem_state, int mem_mng_gwonhan,
			int mem_login_gwonhan, int mem_board_gwonhan, Timestamp mEM_SYSDATE) {
		super();
		this.mem_idx = mem_idx;
		this.mem_id = mem_id;
		this.mem_nickname = mem_nickname;
		this.mem_pw = mem_pw;
		this.mem_gender = mem_gender;
		this.mem_age_group = mem_age_group;
		this.mem_email = mem_email;
		this.mem_rocal = mem_rocal;
		this.mem_state = mem_state;
		this.mem_mng_gwonhan = mem_mng_gwonhan;
		this.mem_login_gwonhan = mem_login_gwonhan;
		this.mem_board_gwonhan = mem_board_gwonhan;
		MEM_SYSDATE = mEM_SYSDATE;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_age_group() {
		return mem_age_group;
	}

	public void setMem_age_group(String mem_age_group) {
		this.mem_age_group = mem_age_group;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_rocal() {
		return mem_rocal;
	}

	public void setMem_rocal(String mem_rocal) {
		this.mem_rocal = mem_rocal;
	}

	public String getMem_state() {
		return mem_state;
	}

	public void setMem_state(String mem_state) {
		this.mem_state = mem_state;
	}

	public int getMem_mng_gwonhan() {
		return mem_mng_gwonhan;
	}

	public void setMem_mng_gwonhan(int mem_mng_gwonhan) {
		this.mem_mng_gwonhan = mem_mng_gwonhan;
	}

	public int getMem_login_gwonhan() {
		return mem_login_gwonhan;
	}

	public void setMem_login_gwonhan(int mem_login_gwonhan) {
		this.mem_login_gwonhan = mem_login_gwonhan;
	}

	public int getMem_board_gwonhan() {
		return mem_board_gwonhan;
	}

	public void setMem_board_gwonhan(int mem_board_gwonhan) {
		this.mem_board_gwonhan = mem_board_gwonhan;
	}

	public Timestamp getMEM_SYSDATE() {
		return MEM_SYSDATE;
	}

	public void setMEM_SYSDATE(Timestamp mEM_SYSDATE) {
		MEM_SYSDATE = mEM_SYSDATE;
	}

	@Override
	public String toString() {
		return "AppDto [mem_idx=" + mem_idx + ", mem_id=" + mem_id + ", mem_nickname=" + mem_nickname + ", mem_pw="
				+ mem_pw + ", mem_gender=" + mem_gender + ", mem_age_group=" + mem_age_group + ", mem_email="
				+ mem_email + ", mem_rocal=" + mem_rocal + ", mem_state=" + mem_state + ", mem_mng_gwonhan="
				+ mem_mng_gwonhan + ", mem_login_gwonhan=" + mem_login_gwonhan + ", mem_board_gwonhan="
				+ mem_board_gwonhan + ", MEM_SYSDATE=" + MEM_SYSDATE + "]";
	}
	
	

}
