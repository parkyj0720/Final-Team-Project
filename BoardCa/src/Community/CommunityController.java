package Community;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		mv.addObject("list1", dao.Main1());
		mv.addObject("list2", dao.Main2());
		mv.addObject("list3", dao.Main3());
		mv.addObject("list4", dao.Main4());
		mv.setViewName("community/C_main.jsp");
		return mv;
	}

	// List
	@RequestMapping("/Community_list_sook.do")
	public ModelAndView community_list_sook() {
		mv.addObject("listname", "숙취게시판");
		mv.addObject("viewname", "/Community_list_sook.do");
		mv.addObject("list", dao.list1());
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	@RequestMapping("/Community_list_jeong.do")
	public ModelAndView community_list_jeong() {
		mv.addObject("listname", "정보공유");
		mv.addObject("viewname", "/Community_list_jeong.do");
		mv.addObject("list", dao.list2());
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	@RequestMapping("/Community_list_Q.do")
	public ModelAndView community_list_Q() {
		mv.addObject("listname", "QnA");
		mv.addObject("viewname", "/Community_list_Q.do");
		mv.addObject("list", dao.list3());
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	@RequestMapping("/Community_list_shin.do")
	public ModelAndView community_list_sin() {
		mv.addObject("listname", "신고합니다");
		mv.addObject("viewname", "/Community_list_shin.do");
		mv.addObject("list", dao.list4());
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	// detail
	@RequestMapping("/Community_detail.do")
	public ModelAndView community_detail(HttpServletRequest request) {
		String board = request.getParameter("list");
		int num1 = Integer.parseInt(request.getParameter("num"));
		if ("숙취게시판".equals(board)) {
			CommunityDto dto = dao.detail1(num1);
			if (dto.getComment_num() != 0) {
				ArrayList<Comment> commentL = dao.comment1(num1);
				mv.addObject("comment", commentL);
			}
			mv.addObject("dto", dto);
			mv.addObject("board", board);
		} else if ("정보공유".equals(board)) {
			CommunityDto dto = dao.detail2(num1);
			if (dto.getComment_num() != 0) {
				ArrayList<Comment> commentL = dao.comment2(num1);
				mv.addObject("comment", commentL);
			}
			mv.addObject("dto", dto);
			mv.addObject("board", board);
		} else if ("QnA".equals(board)) {
			CommunityDto dto = dao.detail3(num1);
			if (dto.getComment_num() != 0) {
				ArrayList<Comment> commentL = dao.comment3(num1);
				mv.addObject("comment", commentL);
			}
			mv.addObject("dto", dto);
			mv.addObject("board", board);
		} else if ("신고합니다".equals(board)) {
			CommunityDto dto = dao.detail4(num1);
			if (dto.getComment_num() != 0) {
				ArrayList<Comment> commentL = dao.comment4(num1);
				mv.addObject("comment", commentL);
			}
			mv.addObject("dto", dto);
			mv.addObject("board", board);
		}
		mv.setViewName("community/C_detail.jsp");
		return mv;
	}

	@RequestMapping("/Community_input.do")
	public ModelAndView community_input() {
		mv.setViewName("community/C_input.jsp");
		return mv;
	}

}
