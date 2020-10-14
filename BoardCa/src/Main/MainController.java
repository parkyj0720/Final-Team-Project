package Main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@Autowired
	private ModelAndView mv;

	@RequestMapping("/main.do")
	public ModelAndView main() {
		mv.setViewName("/main/main.jsp");
		return mv;
	}
	
}
