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

//	회원가입 폼
	@RequestMapping("/signUp.do")
	public ModelAndView signUp(HttpServletRequest req) {		
		String inputId = req.getParameter("inputId");
		String account_email = req.getParameter("account_email");
		String userGender = req.getParameter("userGender");
		String userAgeRange = req.getParameter("userAgeRange");
		String joinDate = req.getParameter("joinDate");
		
		req.setAttribute("idCheck", 1);
		if(joinDate != null) {
			joinDate = joinDate.substring(0, 10);			
		}
		System.out.println("카카오Id"+account_email);
		
		mv.addObject("inputId", inputId); // only number
		mv.addObject("account_email", account_email); // 카카오이메일
		mv.addObject("userGender", userGender); // male / female
		mv.addObject("userAgeRange", userAgeRange); // 20~29
		mv.addObject("joinDate", joinDate); // 2018-08-21
		
		mv.setViewName("/sign/signUp.jsp");
		return mv;
	}
	
//	ID중복 체크 
	@RequestMapping("/idOverlapCheck.do")
	public ModelAndView idOverlapCheck(HttpServletRequest req, String id) {
		int idCheck =-1;

		if (id.equals("")) {
			
		}else {
			idCheck = memDao.idCheck(id);
		}
		mv.addObject("idCheck",idCheck);
		mv.setViewName("/sign/idCheck.jsp");
		return mv;
	}
	
//  PW 두개가 일치하는지 체크 
	@RequestMapping("equalPwCk.do")
	public ModelAndView equalPwCk(HttpServletRequest req, String pw1, String pw2) {
		int pwCheck = -1;
		
		if(pw1.equals("") || pw2.equals("")) {
			pwCheck = -1;
		}else if(pw1.equals(pw2)){
			pwCheck = 1;
		}else{
			pwCheck = 0;
		}
		mv.addObject("pwCheck",pwCheck);
		mv.setViewName("/sign/pwCheck.jsp");
		return mv;
	}
	
//	회원가입하기 클릭시 
	@RequestMapping("/signUpPro.do")
	public ModelAndView signUpPro() {
		mv.setViewName("/sign/signUpPro.jsp");
		return mv;
	}
}
