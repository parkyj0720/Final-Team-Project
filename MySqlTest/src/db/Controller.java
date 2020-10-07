package db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@org.springframework.stereotype.Controller
public class Controller {
	
	
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/db.do")
	public ModelAndView test() {
		
		mv.setViewName("/WEB-INF/db.jsp");
		
		return mv;
		
	}
	

}
