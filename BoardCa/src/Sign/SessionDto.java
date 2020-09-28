package Sign;

import java.sql.Timestamp;

public class SessionDto {
	
	private String sess_ip,sess_move,sess_field;
	private int sess_idx, mem_idx;
	private Timestamp sess_login_time;
	
	public SessionDto() {}

	public SessionDto(String sess_ip, String sess_move, String sess_field, int sess_idx, int mem_idx,
			Timestamp sess_login_time) {
		this.sess_ip = sess_ip;
		this.sess_move = sess_move;
		this.sess_field = sess_field;
		this.sess_idx = sess_idx;
		this.mem_idx = mem_idx;
		this.sess_login_time = sess_login_time;
	}

	public String getSess_ip() {
		return sess_ip;
	}

	public void setSess_ip(String sess_ip) {
		this.sess_ip = sess_ip;
	}

	public String getSess_move() {
		return sess_move;
	}

	public void setSess_move(String sess_move) {
		this.sess_move = sess_move;
	}

	public String getSess_field() {
		return sess_field;
	}

	public void setSess_field(String sess_field) {
		this.sess_field = sess_field;
	}

	public int getSess_idx() {
		return sess_idx;
	}

	public void setSess_idx(int sess_idx) {
		this.sess_idx = sess_idx;
	}

	public int getMem_idx() {
		return mem_idx;
	}

	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}

	public Timestamp getSess_login_time() {
		return sess_login_time;
	}

	public void setSess_login_time(Timestamp sess_login_time) {
		this.sess_login_time = sess_login_time;
	}

	@Override
	public String toString() {
		return "SessionDto [sess_ip=" + sess_ip + ", sess_move=" + sess_move + ", sess_field=" + sess_field
				+ ", sess_idx=" + sess_idx + ", mem_idx=" + mem_idx + ", sess_login_time=" + sess_login_time + "]";
	}
	
	

}
