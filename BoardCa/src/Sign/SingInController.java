package Sign;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SingInController {

	
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/signIn.do")
	public ModelAndView signIn() {
		
		mv.setViewName("/user/signIn.jsp");
		return mv;
	}
	
	
	
	
	
	
}
