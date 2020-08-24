package Food;

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
	public ModelAndView getList() {
		mv.setViewName("/food/food.jsp");
		mv.addObject("cList",dao.getList());
		return mv;
	}
}
