package Food;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	
	@RequestMapping("/cUpload.do")
	public ModelAndView upload(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String file_name = req.getParameter("file");
		System.out.println(file_name);
		ServletContext context = req.getServletContext(); // 어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. (서버의 절대경로를 구하는 데 필요)
		String saveDir = context.getRealPath("upload"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "euc-kr";

		// saveDir: 경로
		// maxSize: 크기제한 설정
		// encoding: 인코딩타입 설정
		// new DefaultFileRenamePolicy(): 동일한 이름일 경우 자동으로 (1),(2)..붙게 해줌

		boolean isMulti = ServletFileUpload.isMultipartContent(req);// boolean타입. ??????
		if (isMulti) {
			MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding,
					new DefaultFileRenamePolicy());
			CDao dao = new CDao();

//			String author = multi.getParameter("author");
//			String title = multi.getParameter("title");
			String file = multi.getFilesystemName("file");

			try {
				int result = dao.uploadFile(file);
				String moveUrl = "";
				if (result > 0) {
					System.out.println("저장완료");
					moveUrl = "selectService";
				} else {
					System.out.println("저장실패");
					moveUrl = "Upload.html";
				}
				res.sendRedirect(moveUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("일반 전송 form 입니다.");
		}
		
		mv.setViewName("food/write_recipe.jsp");
		return mv;
	}
}
