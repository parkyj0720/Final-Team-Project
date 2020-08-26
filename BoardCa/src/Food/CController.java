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
		String page="1";
		if(req.getParameter("page") != null)
			page = req.getParameter("page");
		
		mv.addObject("cList",dao.getList());
		mv.setViewName("/food/food.jsp?page="+page);
		return mv;
	}
}
