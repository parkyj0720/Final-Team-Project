package Community;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CommunityModel.BoardList;
import CommunityModel.Comment;
import CommunityModel.CommunityDao;
import CommunityModel.CommunityDto;

@Controller
public class CommunityController {
	CommunityDao dao = new CommunityDao();
	@Autowired
	private ModelAndView mv;

	// Main
	@RequestMapping("/Community_main.do")
	public ModelAndView community_main() {
		ArrayList<BoardList> boardlist = dao.Get_boardlist();
		for(int i = 1; i<=boardlist.size(); i++) {
			String list = "list"+i;
			mv.addObject(list, dao.main(i));
		}
		mv.addObject("boardList", boardlist);
		mv.setViewName("community/C_main.jsp");
		return mv;
	}

	// List
	@RequestMapping("/Community_list.do")
	public ModelAndView community_list(HttpServletRequest request) {
		ArrayList<Object> heartList = new ArrayList<Object>();
		int list = Integer.parseInt(request.getParameter("list"));
		ArrayList<CommunityDto> communityList = dao.main(list);
		for(int i = 0; i<communityList.size(); i++) {
			int num = dao.list_heart(communityList.get(i).getNum());
			heartList.add(num);
		}
		mv.addObject("heart", heartList);
		mv.addObject("viewname", dao.one_board(list));
		mv.addObject("list", communityList);
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	// detail
	@RequestMapping("/Community_detail.do")
	public ModelAndView community_detail(HttpServletRequest request) {
		String board = request.getParameter("list");
		int num1 = Integer.parseInt(request.getParameter("num"));
		mv.addObject("dto", dto);
		mv.addObject("board", board);
		mv.setViewName("community/C_detail.jsp");
		return mv;
	}
//
//	@RequestMapping("/Community_input.do")
//	public ModelAndView community_input() {
//		mv.setViewName("community/C_input.jsp");
//		return mv;
//	}

}
