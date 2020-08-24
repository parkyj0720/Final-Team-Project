package Member;

public class MemberDto {
	int mem_no;
	String mem_id,mem_pw,mem_sysdate;
	
	public MemberDto() {}

	public MemberDto(int mem_no, String mem_id, String mem_pw, String mem_sysdate) {
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_sysdate = mem_sysdate;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_sysdate() {
		return mem_sysdate;
	}

	public void setMem_sysdate(String mem_sysdate) {
		this.mem_sysdate = mem_sysdate;
	}

	@Override
	public String toString() {
		return "MemberDto [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_sysdate="
				+ mem_sysdate + "]";
	}
	
}
