package Food;

public class CDto {
	int REC_IDX;
	String REC_CRAWLING_ADDR;
	String REC_MAIN_IMG;
	String REC_IMG_NAME;
	String REC_TIT;
	String REC_CONTENT;
	String REC_PEOPLE;
	String REC_COOKING_TIME;
	String REC_DIFICULTY;
	String REC_INGREDIENT;
	String REC_COOKING_METHOD;
	public CDto() {
		this(0, "", "", "", "", "", "", "", "", "", "");
	}
	
	
	public CDto(int rEC_IDX, String rEC_CRAWLING_ADDR, String rEC_MAIN_IMG, String rEC_IMG_NAME, String rEC_TIT,
			String rEC_CONTENT, String rEC_PEOPLE, String rEC_COOKING_TIME, String rEC_DIFICULTY, String rEC_INGREDIENT,
			String rEC_COOKING_METHOD) {
		super();
		REC_IDX = rEC_IDX;
		REC_CRAWLING_ADDR = rEC_CRAWLING_ADDR;
		REC_MAIN_IMG = rEC_MAIN_IMG;
		REC_IMG_NAME = rEC_IMG_NAME;
		REC_TIT = rEC_TIT;
		REC_CONTENT = rEC_CONTENT;
		REC_PEOPLE = rEC_PEOPLE;
		REC_COOKING_TIME = rEC_COOKING_TIME;
		REC_DIFICULTY = rEC_DIFICULTY;
		REC_INGREDIENT = rEC_INGREDIENT;
		REC_COOKING_METHOD = rEC_COOKING_METHOD;
	}

	public int getREC_IDX() {
		return REC_IDX;
	}

	public void setREC_IDX(int rEC_IDX) {
		REC_IDX = rEC_IDX;
	}

	public String getREC_CRAWLING_ADDR() {
		return REC_CRAWLING_ADDR;
	}

	public void setREC_CRAWLING_ADDR(String rEC_CRAWLING_ADDR) {
		REC_CRAWLING_ADDR = rEC_CRAWLING_ADDR;
	}

	public String getREC_MAIN_IMG() {
		return REC_MAIN_IMG;
	}

	public void setREC_MAIN_IMG(String rEC_MAIN_IMG) {
		REC_MAIN_IMG = rEC_MAIN_IMG;
	}

	public String getREC_IMG_NAME() {
		return REC_IMG_NAME;
	}

	public void setREC_IMG_NAME(String rEC_IMG_NAME) {
		REC_IMG_NAME = rEC_IMG_NAME;
	}

	public String getREC_TIT() {
		return REC_TIT;
	}

	public void setREC_TIT(String rEC_TIT) {
		REC_TIT = rEC_TIT;
	}

	public String getREC_CONTENT() {
		return REC_CONTENT;
	}

	public void setREC_CONTENT(String rEC_CONTENT) {
		REC_CONTENT = rEC_CONTENT;
	}

	public String getREC_PEOPLE() {
		return REC_PEOPLE;
	}

	public void setREC_PEOPLE(String rEC_PEOPLE) {
		REC_PEOPLE = rEC_PEOPLE;
	}

	public String getREC_COOKING_TIME() {
		return REC_COOKING_TIME;
	}

	public void setREC_COOKING_TIME(String rEC_COOKING_TIME) {
		REC_COOKING_TIME = rEC_COOKING_TIME;
	}

	public String getREC_DIFICULTY() {
		return REC_DIFICULTY;
	}

	public void setREC_DIFICULTY(String rEC_DIFICULTY) {
		REC_DIFICULTY = rEC_DIFICULTY;
	}

	public String getREC_INGREDIENT() {
		return REC_INGREDIENT;
	}

	public void setREC_INGREDIENT(String rEC_INGREDIENT) {
		REC_INGREDIENT = rEC_INGREDIENT;
	}

	public String getREC_COOKING_METHOD() {
		return REC_COOKING_METHOD;
	}

	public void setREC_COOKING_METHOD(String rEC_COOKING_METHOD) {
		REC_COOKING_METHOD = rEC_COOKING_METHOD;
	}

	@Override
	public String toString() {
		return "CDto [REC_IDX=" + REC_IDX + ", REC_CRAWLING_ADDR=" + REC_CRAWLING_ADDR + ", REC_MAIN_IMG="
				+ REC_MAIN_IMG + ", REC_IMG_NAME=" + REC_IMG_NAME + ", REC_TIT=" + REC_TIT + ", REC_CONTENT="
				+ REC_CONTENT + ", REC_PEOPLE=" + REC_PEOPLE + ", REC_COOKING_TIME=" + REC_COOKING_TIME
				+ ", REC_DIFICULTY=" + REC_DIFICULTY + ", REC_INGREDIENT=" + REC_INGREDIENT + ", REC_COOKING_METHOD="
				+ REC_COOKING_METHOD + "]";
	}

}
