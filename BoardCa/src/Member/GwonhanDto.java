package Member;

public class GwonhanDto {

	int mem_id;
	
	String gwonhan;
	
	int gwonhancode;
	
	public GwonhanDto() {
		// TODO Auto-generated constructor stub
	}

	public GwonhanDto(int mem_id, String gwonhan, int gwonhancode) {
		super();
		this.mem_id = mem_id;
		this.gwonhan = gwonhan;
		this.gwonhancode = gwonhancode;
	}

	public int getMem_id() {
		return mem_id;
	}

	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}

	public String getGwonhan() {
		return gwonhan;
	}

	public void setGwonhan(String gwonhan) {
		this.gwonhan = gwonhan;
	}

	public int getGwonhancode() {
		return gwonhancode;
	}

	public void setGwonhancode(int gwonhancode) {
		this.gwonhancode = gwonhancode;
	}

	@Override
	public String toString() {
		return "GwonhanDto [mem_id=" + mem_id + ", gwonhan=" + gwonhan + ", gwonhancode=" + gwonhancode + "]";
	}
}
