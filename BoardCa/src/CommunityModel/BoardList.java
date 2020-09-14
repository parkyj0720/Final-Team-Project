package CommunityModel;

public class BoardList {
	int num;
	String Board_name;
	
	public BoardList() {
		this(0,"");
	}
	
	public BoardList(int num, String Board_name) {
		this.num = num;
		this.Board_name = Board_name;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBoard_name() {
		return Board_name;
	}
	public void setBoard_name(String board_name) {
		Board_name = board_name;
	}
	@Override
	public String toString() {
		return "BoardList [num=" + num + ", Board_name=" + Board_name + "]";
	}

}
