package Sign;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignUpController {

	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("signUp.do")
	public ModelAndView signUp() {
		mv.setViewName("/user/signUp.jsp");
		return mv;
	}
	
	@RequestMapping("signUpPro.do")
	public ModelAndView signUpPro() {
		mv.setViewName("/user/signUpPro.jsp");
		return mv;
	}
	
	
}
