package Food;

public class StarDto {
	private int star_idx;
	private String star_category;
	private int rec_idx;
	private int game_idx;
	private int mem_idx;
	
	public StarDto() {
		this(0,"",0,0,0);
	}
	
	public StarDto(int star_idx, String star_category, int rec_idx, int game_idx, int mem_idx) {
		this.star_idx = star_idx;
		this.star_category = star_category;
		this.rec_idx = rec_idx;
		this.game_idx = game_idx;
		this.mem_idx = mem_idx;
	}
	
	public int getStar_idx() {
		return star_idx;
	}
	public void setStar_idx(int star_idx) {
		this.star_idx = star_idx;
	}
	public String getStar_category() {
		return star_category;
	}
	public void setStar_category(String star_category) {
		this.star_category = star_category;
	}
	public int getRec_idx() {
		return rec_idx;
	}
	public void setRec_idx(int rec_idx) {
		this.rec_idx = rec_idx;
	}
	public int getGame_idx() {
		return game_idx;
	}
	public void setGame_idx(int game_idx) {
		this.game_idx = game_idx;
	}
	public int getMem_idx() {
		return mem_idx;
	}
	public void setMem_idx(int mem_idx) {
		this.mem_idx = mem_idx;
	}
	
	@Override
	public String toString() {
		return "StarDto [star_idx=" + star_idx + ", star_category=" + star_category + ", rec_idx=" + rec_idx
				+ ", game_idx=" + game_idx + ", mem_idx=" + mem_idx + "]";
	}
}
