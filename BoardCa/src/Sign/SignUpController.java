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

	@RequestMapping("/signUp.do")
	public ModelAndView signUp(HttpServletRequest req) {
		mv.setViewName("/sign/signUp.jsp");
		String userId = req.getParameter("userId");
		String userGender = req.getParameter("userGender");
		String userAgeRange = req.getParameter("userAgeRange");
		String joinDate = req.getParameter("joinDate");
		
		req.setAttribute("idCheck", 1);

		mv.addObject("userId", userId);
		mv.addObject("userGender", userGender);
		mv.addObject("userAgeRange", userAgeRange);
		mv.addObject("joinDate", joinDate);

		return mv;
	}
	
//	ID중복 체크 
	@RequestMapping("/idOverlapCheck.do")
	public ModelAndView idOverlapCheck(HttpServletRequest req, String id) {
		int idCheck =-1;

		if (id == null) {
			
		}else {
			idCheck = memDao.idCheck(id);
		}
		mv.addObject("idCheck",idCheck);
		mv.setViewName("/sign/idCheck.jsp");
		return mv;
	}
	
	@RequestMapping("/signUpPro.do")
	public ModelAndView signUpPro() {
		mv.setViewName("/sign/signUpPro.jsp");
		return mv;
	}

}
