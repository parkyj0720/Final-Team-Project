package Sign;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Member.MemberDao;

@Controller
public class SignUpController {

	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private MemberDao memDao;
	
	
	@RequestMapping("/idOverlapCheck.do")
	public ModelAndView idOverlapCheck(HttpServletRequest req) {
		
		String inputId = req.getParameter("inputId");
		System.out.println(inputId);
		
		/*
		 * int idCheck = memDao.idCheck(inputId);
		 * 
		 * if(idCheck != 0) {
		 * 
		 * }
		 */
		return mv;
	}
	
	
	@RequestMapping("/signUp.do")
	public ModelAndView signUp(HttpServletRequest req) {
		mv.setViewName("/sign/signUp.jsp");
		String userId = req.getParameter("userId");
		String userGender = req.getParameter("userGender");
		String userAgeRange = req.getParameter("userAgeRange");
		String joinDate = req.getParameter("joinDate");
		
		mv.addObject("userId", userId);
		mv.addObject("userGender", userGender);
		mv.addObject("userAgeRange", userAgeRange);
		mv.addObject("joinDate", joinDate);		
		
		return mv;
	}
	
	@RequestMapping("/signUpPro.do")
	public ModelAndView signUpPro() {
		mv.setViewName("/sign/signUpPro.jsp");
		return mv;
	}
	
	
}
