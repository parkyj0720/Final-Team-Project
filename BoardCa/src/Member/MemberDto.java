package Member;

public class MemberDto {
	int mem_idx, mem_age_group, mem_mng_gwonhan;
	String mem_id, mem_nickname, mem_pw, mem_name;
	String mem_email, mem_rocal, mem_state, mem_sysdate;

	public MemberDto() {
	}

	public MemberDto(int mem_idx, int mem_age_group, int mem_mng_gwonhan, String mem_id, String mem_nickname,
			String mem_pw, String mem_name, String mem_email, String mem_rocal, String mem_state, String mem_sysdate) {
		this.mem_idx = mem_idx;
		this.mem_age_group = mem_age_group;
		this.mem_mng_gwonhan = mem_mng_gwonhan;
		this.mem_id = mem_id;
		this.mem_nickname = mem_nickname;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_email = mem_email;
		this.mem_rocal = mem_rocal;
		this.mem_state = mem_state;
		this.mem_sysdate = mem_sysdate;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public int getMem_age_group() {
		return mem_age_group;
	}

	public void setMem_age_group(int mem_age_group) {
		this.mem_age_group = mem_age_group;
	}

	public int getMem_mng_gwonhan() {
		return mem_mng_gwonhan;
	}

	public void setMem_mng_gwonhan(int mem_mng_gwonhan) {
		this.mem_mng_gwonhan = mem_mng_gwonhan;
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

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
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

	public String getMem_sysdate() {
		return mem_sysdate;
	}

	public void setMem_sysdate(String mem_sysdate) {
		this.mem_sysdate = mem_sysdate;
	}

	@Override
	public String toString() {
		return "MemberDto [mem_idx=" + mem_idx + ", mem_age_group=" + mem_age_group + ", mem_mng_gwonhan="
				+ mem_mng_gwonhan + ", mem_id=" + mem_id + ", mem_nickname=" + mem_nickname + ", mem_pw=" + mem_pw
				+ ", mem_name=" + mem_name + ", mem_email=" + mem_email + ", mem_rocal=" + mem_rocal + ", mem_state="
				+ mem_state + ", mem_sysdate=" + mem_sysdate + "]";
	}
	
	
}

	
