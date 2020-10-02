package Community;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import CommunityModel.BoardList;
import CommunityModel.CoDao;
import CommunityModel.Comment;
import CommunityModel.CommunityDto;
import CommunityModel.Heart;
import CommunityModel.InputDto;

@Controller
public class CommunityController {
	
	@Autowired
	CoDao dao;
	
	
	
	@Autowired
	private ModelAndView mv;

	// Main
	@RequestMapping("/Community_main.do")
	public ModelAndView community_main() {
		List<BoardList> boardlist = dao.Get_boardlist();
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
		int list_num = Integer.parseInt(request.getParameter("list"));
		List<CommunityDto> communityList = dao.List(list_num);
		for (int i = 0; i < communityList.size(); i++) {
			int no = communityList.get(i).getNum();
			int num = dao.list_heart(no);
			heartList.add(num);
		}
		mv.addObject("heart", heartList);
		mv.addObject("viewname", dao.one_board(list_num));
		mv.addObject("list", communityList);
		mv.setViewName("community/C_list.jsp");
		return mv;
	}
		 
	  
	// detail
	@RequestMapping("/Community_detail.do")
	public ModelAndView community_detail(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		dao.view(num);
		CommunityDto dto = dao.detail(num);
		int boardnum = dto.getBoardnum();
		mv.addObject("board", dao.one_board(boardnum));
		mv.addObject("dto", dto);
		mv.addObject("heart", dao.detail_heart(num));
		mv.addObject("comment", dao.detail_comments(num));
		mv.setViewName("community/C_detail.jsp");
		return mv;
	}
	// 좋아요
	@RequestMapping(value = "/Community_heart.do", method = RequestMethod.POST, produces="application/json")
	@ResponseBody
	public void community_heart(Heart dto, HttpServletRequest request, HttpSession session) {
		
		System.out.println(dto);

		List<Heart> hList = dao.detail_heart(dto.getContent_num());
		int dataNum = 0;
		for (int i = 0; i < hList.size(); i++) {
			if (hList.get(i).getUsername().equals(dto.getUsername())) {
				dao.detail_heart_delete(dto);
				System.out.println(dto.getContent_num() + "번글" + dto.getUsername() + "좋아요 취소");
				dataNum = 1;
			}
		}
		if (dataNum == 0) {
			dao.detail_heart_insert(dto);
			System.out.println(dto.getContent_num() + "번글" + dto.getUsername() + "좋아요");
		}
	}
	@RequestMapping(value = "/Community_heart_count.do", method = RequestMethod.POST, produces="application/json")
	@ResponseBody
	public String recCount(int no){
		System.out.println(no);
		System.out.println("카운트 값 전송됨");
		int count = 0;
		try {
			List<Heart> list = (List<Heart>)dao.detail_heart(no);
			count = list.size();
		} catch (Exception e) {
			System.out.println("error");
			e.printStackTrace();
		}
		System.out.println(count);
		return count + "";
	}
		  
	// input
	@RequestMapping("/Community_input.do")
	public ModelAndView community_input(HttpServletRequest request) {
		mv.setViewName("community/C_input.jsp");
		mv.addObject("boardList", dao.Get_boardlist());
		return mv;
	}

	@RequestMapping(value = "/Community_inputContent.do", method = RequestMethod.POST)

	@ResponseBody
	public void community_input_content(InputDto data, HttpServletRequest request) {
		System.out.println(data);
		CommunityDto dto = new CommunityDto(0, data.getTitle(), data.getWriter_id(), "", data.getAsd(), 0,
				data.getBoardnum());
		dao.insert(dto);
	}
	// modify 
	@RequestMapping("/Community_Modify.do")
	public ModelAndView community_modify(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		mv.setViewName("community/C_Modify.jsp");
		mv.addObject("data", dao.detail(num));
		mv.addObject("boardList", dao.Get_boardlist());
		return mv;
	}
	
	// delete
	@RequestMapping(value = "/Community_delete.do", method = RequestMethod.POST)

	@ResponseBody
	public void community_delete(Heart data, HttpServletRequest request) {
		int num = data.getContent_num();
		System.out.println(num);
		dao.delete_content(num);
	}
	
	
	// delete
	@RequestMapping(value = "/Community_comment.do", method = RequestMethod.POST)
	
	@ResponseBody
	public void community_comment(Comment data, HttpServletRequest request) {
		System.out.println(data);
	}

}
