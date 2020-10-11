package Community;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import Member.MemberDto;
import user.UserDAO;

@Controller
public class CommunityController {
	
	@Autowired
	CoDao dao;
	
	@Autowired
	private ModelAndView mv;

	// Main
	@RequestMapping("/Community_main.do")
	public ModelAndView community_main() {
		// 게시판 번호, 이름 정보 가져오기
		List<BoardList> boardlist = dao.Get_boardlist();
		for(int i = 1; i<=boardlist.size(); i++) {
			// 게시판당 상위7개 게시글 가져와서 넘겨줌
			String list = "list"+i;
			mv.addObject(list, dao.main(i));
		}
		// 게시판 번호, 이름정보 넘겨줌
		mv.addObject("boardList", boardlist);
		mv.setViewName("community/C_main.jsp");
		return mv;
	}

	
	 // List
	@RequestMapping("/Community_list.do")
	public ModelAndView community_list(HttpServletRequest request) {
		ArrayList<Object> heartList = new ArrayList<Object>();
		int list_num = Integer.parseInt(request.getParameter("list"));
		
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		mv.addObject("page", page);
		mv.addObject("viewname", dao.one_board(list_num));
		mv.addObject("list",  dao.List(list_num));
		mv.setViewName("community/C_list.jsp");
		return mv;
	}

	  
	// detail
	@RequestMapping("/Community_detail.do")
	public ModelAndView community_detail(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		 Cookie[] cookies = request.getCookies();
		 String memberNo = "";
		try {
			memberNo = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			int num = Integer.parseInt(request.getParameter("num"));
	        // 비교하기 위해 새로운 쿠키
	        Cookie viewCookie = null;
	        // 쿠키가 있을 경우 
	        if (cookies != null && cookies.length > 0){
	            for (int i = 0; i < cookies.length; i++){
	                // Cookie의 name이 cookie + memberNo와 일치하는 쿠키를 viewCookie에 넣어줌 
	                if (cookies[i].getName().equals("cookie"+memberNo)){ 
	                    System.out.println("처음 쿠키가 생성한 뒤 들어옴.");
	                    viewCookie = cookies[i];
	                }
	            }
	        }
	        if (memberNo != null) {
	            System.out.println("System - 해당 상세 리뷰페이지로 넘어감");
	            mv.addObject("memberNo", memberNo);
	            // 만일 viewCookie가 null일 경우 쿠키를 생성해서 조회수 증가 로직을 처리함.
	            if (viewCookie == null) {    
	                System.out.println("cookie 없음");
	                // 쿠키 생성(이름, 값)
	                Cookie newCookie = new Cookie("cookie"+memberNo, "|" + memberNo + "|" + "num=" + num);
	                
	                newCookie.setMaxAge(60*60);
	                // 쿠키 추가
	                response.addCookie(newCookie);
	                // 쿠키를 추가 시키고 조회수 증가시킴
	                dao.view(num);
	            }
	            // viewCookie가 null이 아닐경우 쿠키가 있으므로 조회수 증가 로직을 처리하지 않음.
	            else {
	                System.out.println("cookie 있음");
	                // 쿠키 값 받아옴.
	                String value = viewCookie.getValue();
	                System.out.println("cookie 값 : " + value);
	                String val = "|" + memberNo + "|" + "num=" + num;
	                System.out.println("비교 쿠키 값 : " + val);
	                if(value.equals(val)){
	                	System.out.println("쿠키값 같음");
	                }else {
	                	System.out.println("쿠키값 다름");
		                Cookie newCookie = new Cookie("cookie"+memberNo, "|" + memberNo + "|" + "num=" + num);
		                
		                newCookie.setMaxAge(60*60);
		                newCookie.setPath("http://localhost:8088/BoardCa/Community_detail.do?num=" + num);
		                // 쿠키 추가
		                response.addCookie(newCookie);
		                // 쿠키를 추가 시키고 조회수 증가시킴
		                dao.view(num);
	                }
	                }
	    		CommunityDto dto = dao.detail(num);
	    		int boardnum = dto.getCATEGORY_IDX();
	    		mv.addObject("board", dao.one_board(boardnum));
	    		mv.addObject("dto", dto);
	    		mv.addObject("heart", dao.detail_heart(num));
	    		mv.addObject("comment", dao.detail_comments(num));
	    		mv.setViewName("community/C_detail.jsp");
	    		return mv;
	        }
		CommunityDto dto = dao.detail(num);
		int boardnum = dto.getCATEGORY_IDX();
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
		// 좋아요 정보받아오기
		List<Heart> hList = dao.detail_heart(dto.getBOARD_IDX());
		int dataNum = 0;
		// 중복체크
		for (int i = 0; i < hList.size(); i++) {
			// 중복되면 기존에있던 좋아요기록 삭제
			if (hList.get(i).getMEM_IDX()==dto.getMEM_IDX()) {
				dao.detail_heart_delete(dto);
				System.out.println(dto.getBOARD_IDX() + "번글" + dto.getBOARD_IDX() + "좋아요 취소");
				dataNum = 1;
			}
		}
		// 중복되는 정보가 없으면 좋아요기록 생성
		if (dataNum == 0) {
			dao.detail_heart_insert(dto);
			System.out.println(dto.getBOARD_IDX() + "번글" + dto.getMEM_IDX() + "좋아요");
		}
	}
	
	// heartList.size리턴
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

	// 게시글 저장
	@RequestMapping(value = "/Community_inputContent.do", method = RequestMethod.POST)
	@ResponseBody
	public void community_input_content(InputDto data, HttpServletRequest request) {
		System.out.println(data);
		CommunityDto dto = new CommunityDto(0, data.getBRD_TIT(), data.getBRD_WRT_ID(), new Timestamp((System.currentTimeMillis()/1000L)*1000L), data.getBRD_CONTENT(), 0,
				data.getCATEGORY_IDX());
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
	
	@RequestMapping(value = "/Community_ModifyContent.do", method = RequestMethod.POST)

	@ResponseBody
	public void community_modify_content(InputDto data, HttpServletRequest request) {
		System.out.println(data);
		CommunityDto dto = new CommunityDto(data.getBRD_IDX(), data.getBRD_TIT(), data.getBRD_WRT_ID(), new Timestamp((System.currentTimeMillis()/1000L)*1000L), data.getBRD_CONTENT(), 0, data.getCATEGORY_IDX());
		dao.modify(dto);
	}
	
	// delete
	@RequestMapping(value = "/Community_delete.do", method = RequestMethod.POST)

	@ResponseBody
	public void community_delete(Heart data, HttpServletRequest request) {
		int num = data.getBOARD_IDX();
		System.out.println(num);
		dao.delete_content(num);
	}
	
	
	// delete
	@RequestMapping(value = "/Community_comment.do", method = RequestMethod.POST)
	
	@ResponseBody
	public void community_comment(Comment data, HttpServletRequest request) {
		System.out.println(data);
		dao.insert_comment(data); 
	}
	
	// 댓글 삭제
	@RequestMapping(value = "/Community_delete_comment.do", method = RequestMethod.POST)
	@ResponseBody
	public void community_delete_comment(String data, HttpServletRequest request) {
		System.out.println(data);
	}
	
	
	
	///////////////////////////////////////////////////////////////////////////////////////
	// 안드로이드 커뮤니티
		@RequestMapping("/App_detail.do")
		public ModelAndView App_detail(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
			System.out.println("App_detail");
			
			String MEM_ID = "";
			if(request.getParameter("MEM_ID") != null) {
				MEM_ID = (String)request.getParameter("MEM_ID");
			}
			
			int MEM_IDX = dao.getIdx(MEM_ID);
			mv.addObject("MEM_IDX", MEM_IDX);
			
			 Cookie[] cookies = request.getCookies();
			 String memberNo = "";
			try {
				memberNo = InetAddress.getLocalHost().getHostAddress();
			} catch (UnknownHostException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				int num = Integer.parseInt(request.getParameter("num"));
		        // 비교하기 위해 새로운 쿠키
		        Cookie viewCookie = null;
		        // 쿠키가 있을 경우 
		        if (cookies != null && cookies.length > 0){
		            for (int i = 0; i < cookies.length; i++){
		                // Cookie의 name이 cookie + memberNo와 일치하는 쿠키를 viewCookie에 넣어줌 
		                if (cookies[i].getName().equals("cookie"+memberNo)){ 
		                    System.out.println("처음 쿠키가 생성한 뒤 들어옴.");
		                    viewCookie = cookies[i];
		                }
		            }
		        }
		        if (memberNo != null) {
		            System.out.println("System - 해당 상세 리뷰페이지로 넘어감");
		            mv.addObject("memberNo", memberNo);
		            // 만일 viewCookie가 null일 경우 쿠키를 생성해서 조회수 증가 로직을 처리함.
		            if (viewCookie == null) {    
		                System.out.println("cookie 없음");
		                // 쿠키 생성(이름, 값)
		                Cookie newCookie = new Cookie("cookie"+memberNo, "|" + memberNo + "|" + "num=" + num);
		                
		                newCookie.setMaxAge(60*60);
		                // 쿠키 추가
		                response.addCookie(newCookie);
		                // 쿠키를 추가 시키고 조회수 증가시킴
		                dao.view(num);
		            }
		            // viewCookie가 null이 아닐경우 쿠키가 있으므로 조회수 증가 로직을 처리하지 않음.
		            else {
		                System.out.println("cookie 있음");
		                // 쿠키 값 받아옴.
		                String value = viewCookie.getValue();
		                System.out.println("cookie 값 : " + value);
		                String val = "|" + memberNo + "|" + "num=" + num;
		                System.out.println("비교 쿠키 값 : " + val);
		                if(value.equals(val)){
		                	System.out.println("쿠키값 같음");
		                }else {
		                	System.out.println("쿠키값 다름");
			                Cookie newCookie = new Cookie("cookie"+memberNo, "|" + memberNo + "|" + "num=" + num);
			                
			                newCookie.setMaxAge(60*60);
			                newCookie.setPath("http://localhost:8088/BoardCa/App_detail.do?num=" + num );
			                // 쿠키 추가
			                response.addCookie(newCookie);
			                // 쿠키를 추가 시키고 조회수 증가시킴
			                dao.view(num);
		                }
		                }
		    		CommunityDto dto = dao.detail(num);
		    		int boardnum = dto.getCATEGORY_IDX();
		    		mv.addObject("board", dao.one_board(boardnum));
		    		mv.addObject("dto", dto);
		    		mv.addObject("heart", dao.detail_heart(num));
		    		mv.addObject("comment", dao.detail_comments(num));
		    		mv.setViewName("/App_Community/App_detail.jsp");
		    		return mv;
		        }
			CommunityDto dto = dao.detail(num);
			int boardnum = dto.getCATEGORY_IDX();
			mv.addObject("board", dao.one_board(boardnum));
			mv.addObject("dto", dto);
			mv.addObject("heart", dao.detail_heart(num));
			mv.addObject("comment", dao.detail_comments(num));
			
			mv.setViewName("/App_Community/App_detail.jsp");
			return mv;
		}
		
		@RequestMapping("/App_input.do")
		public ModelAndView App_input(HttpServletRequest request) {
			System.out.println("App_input");
			mv.addObject("boardList", dao.Get_boardlist());
			mv.setViewName("/App_Community/App_input.jsp");
			return mv;
		}
		@RequestMapping("/App_list.do")
		public ModelAndView App_list(HttpServletRequest request) {
			System.out.println("App_list");
			
			String MEM_ID = "";
			if(request.getParameter("MEM_ID") != null) {
				MEM_ID = request.getParameter("MEM_ID");
			}
			System.out.println("MEM_ID >>> " + MEM_ID);
			
//			int MEM_IDX = dao.getIdx(MEM_ID);
//			System.out.println(MEM_IDX);
			
			ArrayList<Object> heartList = new ArrayList<Object>();
			int list_num = Integer.parseInt(request.getParameter("list"));
			
			int page = 1;
			if(request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			
			mv.addObject("page", page);
			mv.addObject("viewname", dao.one_board(list_num));
			mv.addObject("list",  dao.List(list_num));
			
			mv.setViewName("/App_Community/App_list.jsp");
			return mv;
		}
		@RequestMapping("/App_modify.do")
		public ModelAndView App_modify(HttpServletRequest request) {
			System.out.println("App_modify");
			
			int num = Integer.parseInt(request.getParameter("num"));
			mv.addObject("data", dao.detail(num));
			mv.addObject("boardList", dao.Get_boardlist());
			mv.setViewName("/App_Community/App_modify.jsp");
			return mv;
		}

}
