package Food;

public class CDto {
	int r_board_no;
	String r_crawling_addr;
	String r_main_thumbs;
	String r_title;
	String r_explain;
	String r_standard;
	String r_cooking_time;
	String r_difficult;
	String r_ingredient;
	String r_cooking_order;
	
	public int getR_board_no() {
		return r_board_no;
	}
	public void setR_board_no(int r_board_no) {
		this.r_board_no = r_board_no;
	}
	public String getR_crawling_addr() {
		return r_crawling_addr;
	}
	public void setR_crawling_addr(String r_crawling_addr) {
		this.r_crawling_addr = r_crawling_addr;
	}
	public String getR_main_thumbs() {
		return r_main_thumbs;
	}
	public void setR_main_thumbs(String r_main_thumbs) {
		this.r_main_thumbs = r_main_thumbs;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_explain() {
		return r_explain;
	}
	public void setR_explain(String r_explain) {
		this.r_explain = r_explain;
	}
	public String getR_standard() {
		return r_standard;
	}
	public void setR_standard(String r_standard) {
		this.r_standard = r_standard;
	}
	public String getR_cooking_time() {
		return r_cooking_time;
	}
	public void setR_cooking_time(String r_cooking_time) {
		this.r_cooking_time = r_cooking_time;
	}
	public String getR_difficult() {
		return r_difficult;
	}
	public void setR_difficult(String r_difficult) {
		this.r_difficult = r_difficult;
	}
	public String getR_ingredient() {
		return r_ingredient;
	}
	public void setR_ingredient(String r_ingredient) {
		this.r_ingredient = r_ingredient;
	}
	public String getR_cooking_order() {
		return r_cooking_order;
	}
	public void setR_cooking_order(String r_cooking_order) {
		this.r_cooking_order = r_cooking_order;
	}
	@Override
	public String toString() {
		return "cDto [r_board_no=" + r_board_no + ", r_crawling_addr=" + r_crawling_addr + ", r_main_thumbs="
				+ r_main_thumbs + ", r_title=" + r_title + ", r_explain=" + r_explain + ", r_standard=" + r_standard
				+ ", r_cooking_time=" + r_cooking_time + ", r_difficult=" + r_difficult + ", r_ingredient="
				+ r_ingredient + ", r_cooking_order=" + r_cooking_order + "]";
	}
	
	
}
