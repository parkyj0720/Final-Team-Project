package Food;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import Member.MemberDto;

@Controller
public class CController {
	@Autowired
	private ModelAndView mv;
	 
	@Autowired
	private CDao dao;
	
	// 레시피 전체 목록 맵핑
	@RequestMapping("/cListAll.do")
	public ModelAndView getList(HttpServletRequest req, HttpSession session) {
		// 페이지 기본값
		int page= 1;
		if(req.getParameter("page") != null)
		{
			page = Integer.parseInt(req.getParameter("page"));
			if(page<=0)
				page = 1;
		}
		
		// 관리자 확인을 위한 멤버정보 확인
		if(session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memberInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck",mDto);
		}
		
		// 즐겨찾기 목록 받아오기
		int userIdx = 0;
		if(session.getAttribute("userIdx") != null) {
			userIdx = Integer.parseInt(session.getAttribute("userIdx")+"");
		}
		StarDto starDto = new StarDto(0, null, 0, 0, userIdx);
		List<StarDto> starList = dao.starList(starDto);
		mv.addObject("starList", starList);
		
		// 레시피 목록 받아오기
		mv.addObject("cList",dao.getList());
		mv.setViewName("/food/food.jsp?page="+page);
		return mv;
	}
	
	// 상세 페이지 맵핑
	@RequestMapping("/cDetail.do")
	public ModelAndView detail(HttpServletRequest req, HttpSession session) {
		
		// 레시피 게시글 번호 받아오기
		int r_board_no = Integer.parseInt(req.getParameter("no"));
		
		// 가져온 번호에 대한 레시피 상세정보
		CDto dto = dao.detail(r_board_no);
		mv.addObject("dto",dto);
		
		// 댓글 리스트
		List<ReviewAndMember> reviewList = dao.reviewList(r_board_no);
		mv.addObject("reviewList", reviewList);
		
		// 관리자 확인을 위한 멤버정보 확인
		if(session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memberInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck",mDto);
		}
		
		// 레시피 상세정보 페이지
		mv.setViewName("/food/recipeDetail.jsp");
		return mv;
	}
	
	// 검색 기능
	@RequestMapping("/cSearch.do")
	public ModelAndView search(HttpServletRequest req, HttpSession session) {
		int page= 1;
		if(req.getParameter("page") != null)
		{
			page = Integer.parseInt(req.getParameter("page"));
			if(page<=0)
				page = 1;
		}
		// 검색어 받아오기
		String search = req.getParameter("inputSearch");
		
		// 관리자 확인을 위한 멤버정보 확인
		if(session.getAttribute("userId") != null) {
			String userId = (String) session.getAttribute("userId");
			MemberDto mDto = dao.memberInfo(userId);
			System.out.println(mDto);
			mv.addObject("detailCheck",mDto);
		}
		
		// 검색한 단어에 해당하는 목록 받아서 저장
		mv.addObject("cList",dao.getSearchList(search));
		mv.addObject("inputSearch",search);
		mv.setViewName("/food/food.jsp?page="+page);
		return mv;
	}
	
	// 레시피 글쓰기 페이지로 이동
	@RequestMapping("/cWrite.do")
	public ModelAndView write(HttpServletRequest req) {
		mv.setViewName("/food/write_recipe.jsp");
		return mv;
	}
	
	// 레시피 수정 페이지 이동
	@RequestMapping("/cModify.do")
	public ModelAndView modify(HttpServletRequest req) {
		// 레시피 글 번호
		int no = Integer.parseInt(req.getParameter("no"));
		
		// 가져온 번호에 대한 레시피 상세정보
		CDto dto = dao.detail(no);
		
		mv.addObject("dto", dto);
		mv.setViewName("/food/modify_recipe.jsp?no="+no);
		return mv;
	}
	
	// 삭제 기능
	@RequestMapping("/cDelete.do")
	public ModelAndView delete(HttpServletRequest req) {
		
		int cnt = dao.deleteRecipe(Integer.parseInt(req.getParameter("no")));
		
		mv.setViewName("redirect:/cListAll.do?page=1");
		return mv;
	}
	
	// 한줄평 등록
	@RequestMapping("/reviewInsert.do")
	public ModelAndView review(HttpServletRequest req, HttpSession session) {
		
		int no = Integer.parseInt(req.getParameter("no"));
		String review = req.getParameter("review_text");
		ReviewDto dto = new ReviewDto(0, "R", review, "", no, 0, Integer.parseInt(session.getAttribute("userIdx")+""));
		
		dao.insertReview(dto);
		
		mv.setViewName("redirect:/cDetail.do?no="+no);
		return mv;
	}
	
	// 한줄평 삭제
	@RequestMapping("/deleteReview.do")
	public ModelAndView deleteReview(HttpServletRequest req, HttpSession session) {
		
		int no = Integer.parseInt(req.getParameter("no"));
		int del = Integer.parseInt(req.getParameter("del"));
		
		dao.deleteReview(del);
		
		mv.setViewName("redirect:/cDetail.do?no="+no);
		return mv;
	}

	// 즐겨찾기추가 ajax
	@RequestMapping("/starInsert.do")
	public ModelAndView starInsert(HttpServletRequest req, HttpSession session) {
		int no = Integer.parseInt(req.getParameter("no"));
		StarDto dto = new StarDto(0, "R", no, 0, Integer.parseInt(session.getAttribute("userIdx")+""));
		dao.starInsert(dto);
		
		return mv;
	}
	
	// 즐겨찾기삭제 ajax
	@RequestMapping("/starDelete.do")
	public ModelAndView starDelete(HttpServletRequest req, HttpSession session) {
		int no = Integer.parseInt(req.getParameter("no"));
		StarDto dto = new StarDto(0, "R", no, 0, Integer.parseInt(session.getAttribute("userIdx")+""));
		dao.starDelete(dto);
		
		return mv;
	}
		
	// 글 썼을때 정보 저장 form에서 multipart/form-data 형식으로 데이터를 보내줌
	@RequestMapping("/cUpload.do")
	public ModelAndView upload(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		// 글쓰기시 크롤링으로 받아오는게 아니라 크롤링관련 정보 공백
		String r_crawling_addr = "";
		String r_main_thumbs = "";
		
		ServletContext context = req.getServletContext(); // 어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. (서버의 절대경로를 구하는 데 필요)
		String saveDir = context.getRealPath("upload"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "utf-8";
		// saveDir: 경로
		// maxSize: 크기제한 설정
		// encoding: 인코딩타입 설정
		// new DefaultFileRenamePolicy(): 동일한 이름일 경우 자동으로 (1),(2)..붙게 해줌

		boolean isMulti = ServletFileUpload.isMultipartContent(req);// boolean타입. ??????
		if (isMulti) {
			// 객체생성과 동시에 절대경로에 메타데이터 이미지파일 저장
			MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding,
					new DefaultFileRenamePolicy());
			
			// 글쓰기 관련 정보들 변수에 저장
			String r_file = multi.getFilesystemName("file");
			
			String r_title = multi.getParameter("title");
			String r_explain = multi.getParameter("explain");
			String r_standard = multi.getParameter("standard");
			String r_cooking_time = multi.getParameter("cooking_time");
			String r_difficult = multi.getParameter("difficult");
			
			String r_ingredient = multi.getParameter("ingredient");
			String r_cooking_order = multi.getParameter("cooking_order");

			try {
				// 데이터베이스에 저장
				int result = dao.uploadFile(new CDto(0, r_crawling_addr, r_main_thumbs, r_file, r_title, r_explain, r_standard, r_cooking_time, r_difficult, r_ingredient, r_cooking_order));
				if (result > 0) {
					System.out.println("저장완료");
				} else {
					System.out.println("저장실패");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("일반 전송 form 입니다.");
		}
		
		mv.setViewName("redirect:/food/food.jsp?page=1");
		return mv;
	}
	
	// 글쓰기중 이미지이름 중복 검사 ajax로 호출
	@RequestMapping("/cFileNameCheck.do")
	public ModelAndView fileNameCheck(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		ServletContext context = req.getServletContext();
		String saveDir = context.getRealPath("upload"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		String new_fileName = multi.getFilesystemName("file2");
//		System.out.println("new_file: "+new_fileName);
		
		mv.addObject("newFileName",new_fileName);
		mv.setViewName("food/fileNameCheck.jsp");
		return mv;
	}
	
	// 파이썬 파일 실행을 위한 객체
	private static PythonInterpreter intPre;
	
	@RequestMapping("/crawling.do")
	public ModelAndView crawling(HttpServletRequest req, HttpServletResponse res) throws IOException {
	    try{
	    		// 파이썬 관련 경로 설정 등
	            Properties p = new Properties();
	            //p.setProperty("python.path", "PATH OF JYTHON");
	            p.setProperty("python.path", "PATH TO jython-standalone-2.7.2.jar");
	            p.setProperty("python.home", "PATH OF JYTHON");
	            p.setProperty("python.prefix", "PATH OF JYTHON");
	            p.setProperty("python.import.site", "false");
	            PythonInterpreter.initialize(System.getProperties(), p, new String[] {});
	            // 문제 없을시 객체 생성
	            intPre = new PythonInterpreter();
	    }catch(Exception ex){
	        System.out.println("Exception while creating python interpreter: "+ex.toString());
	    }
		
	    // 파이썬 파일 경로
		intPre.execfile(req.getContextPath()+"/Final-Team-Project/BoardCa/src/Py/crawlingMysqlTest2.py");
		//intPre.exec("print(testFunc(1,1))");
		
		// 지정한 파일에서 실행할 함수이름
		PyFunction pyFunction = (PyFunction)intPre.get("crawlingFunc", PyFunction.class);
		// 필요한 매개변수 값
		int a = 1, b = 2;
		// 함수 호출
		PyObject pyobj = pyFunction.__call__(new PyInteger(a), new PyInteger(b));
		//System.out.println(pyobj.toString());
		
		mv.setViewName("/cListAll.do?page=1");
		return mv;
	}
}
