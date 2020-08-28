package Food;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}
