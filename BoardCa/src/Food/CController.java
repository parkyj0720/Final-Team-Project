package Food;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@Controller
public class CController {
	@Autowired
	private ModelAndView mv;
	 
	@Autowired
	private CDao dao;
	
	@RequestMapping("/cListAll.do")
	public ModelAndView getList(HttpServletRequest req) {
		int page= 1;
		if(req.getParameter("page") != null)
		{
			page = Integer.parseInt(req.getParameter("page"));
			if(page<=0)
				page = 1;
		}
		
		mv.addObject("cList",dao.getList());
		mv.setViewName("/food/food.jsp?page="+page);
		return mv;
	}
	
	@RequestMapping("/cSearch.do")
	public ModelAndView search(HttpServletRequest req) {
		int page= 1;
		if(req.getParameter("page") != null)
		{
			page = Integer.parseInt(req.getParameter("page"));
			if(page<=0)
				page = 1;
		}
		String search = req.getParameter("inputSearch");
		mv.addObject("cList",dao.getSearchList(search));
		mv.addObject("inputSearch",search);
		mv.setViewName("/food/food.jsp?page="+page);
		return mv;
	}
	
	@RequestMapping("/cWrite.do")
	public ModelAndView write(HttpServletRequest req) {
		mv.setViewName("/food/write_recipe.jsp");
		return mv;
	}
	
	@RequestMapping("/cUpload.do")
	public ModelAndView upload(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String r_crawling_addr = "";
		String r_main_thumbs = "";
		
		String r_filename = req.getParameter("file");
		
//		String r_title = req.getParameter("title");
//		String r_explain = req.getParameter("explain");
//		String r_standard = req.getParameter("standard");
//		String r_cooking_time = req.getParameter("cooking_time");
//		String r_difficult = req.getParameter("difficult");
//		
//		String r_ingredient = req.getParameter("ingredient");
//		String r_cooking_order = req.getParameter("cooking_order");
		
		System.out.println(r_filename);
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
			MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding,
					new DefaultFileRenamePolicy());

//			String author = multi.getParameter("author");
//			String title = multi.getParameter("title");
			String file = multi.getFilesystemName("file");
			
			String r_title = multi.getParameter("title");
			String r_explain = multi.getParameter("explain");
			String r_standard = multi.getParameter("standard");
			String r_cooking_time = multi.getParameter("cooking_time");
			String r_difficult = multi.getParameter("difficult");
			
			String r_ingredient = multi.getParameter("ingredient");
			String r_cooking_order = multi.getParameter("cooking_order");

			try {
				int result = dao.uploadFile(new CDto(0, r_crawling_addr, r_main_thumbs, file, r_title, r_explain, r_standard, r_cooking_time, r_difficult, r_ingredient, r_cooking_order));
				String moveUrl = "";
				if (result > 0) {
					System.out.println("저장완료");
					moveUrl = "selectService";
				} else {
					System.out.println("저장실패");
					moveUrl = "Upload.html";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("일반 전송 form 입니다.");
		}
		
		mv.setViewName("food/write_recipe.jsp");
		return mv;
	}
	
	@RequestMapping("/cFileNameCheck.do")
	public ModelAndView fileNameCheck(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
//		String file = req.getParameter("file2");
//		System.out.println("file: "+file);
		
		ServletContext context = req.getServletContext();
		String saveDir = context.getRealPath("upload"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "utf-8";
		
		MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding,
				new DefaultFileRenamePolicy());
		
		String new_fileName = multi.getFilesystemName("file2");
		System.out.println("new_file: "+new_fileName);
		
		mv.addObject("newFileName",new_fileName);
		mv.setViewName("food/fileNameCheck.jsp");
		return mv;
	}
}
