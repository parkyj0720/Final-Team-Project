package Sign;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Member.MemberDao;
import Member.MemberDto;

@Controller
public class SignUpController {

	@Autowired
	private ModelAndView mv;

	@Autowired
	private MemberDao memDao;

	@RequestMapping("/kakaoSignIn.do")
	public ModelAndView kakaoSignIn(HttpServletRequest req) {
		String userId = req.getParameter("userId");
		String account_email = req.getParameter("account_email");
		String userGender = req.getParameter("userGender");
		String userAgeRange = req.getParameter("userAgeRange");
		String joinDate = req.getParameter("joinDate");
		String userToken = req.getParameter("userToken");
		int idCheck = -1;

		idCheck = memDao.idCheck(userId);
		
		mv.addObject("idCheck", idCheck);
		mv.addObject("userId", userId); 
		mv.addObject("account_email", account_email); // 카카오이메일 
		mv.addObject("userGender", userGender); // male ,female
		mv.addObject("userAgeRange", userAgeRange); // 20~29
		mv.addObject("joinDate", joinDate); // 2018-08-21		
		mv.addObject("userToken", userToken); // 사용자토큰	
		
		mv.setViewName("/sign/kakaoChk.jsp");

		return mv;
	}

//	회원가입 폼
	@RequestMapping("/signUp.do")
	public ModelAndView signUp(HttpServletRequest req) {
		String inputId = req.getParameter("userId");
		String account_email = req.getParameter("account_email");
		String userGender = req.getParameter("userGender");
		String userAgeRange = req.getParameter("userAgeRange");
		String joinDate = req.getParameter("joinDate");

		req.setAttribute("idCheck", 1);

		String email1 = null;
		String email2 = null;
		if (account_email != null) {
			String[] email = account_email.split("@");
			email1 = email[0];
			email2 = email[1];
		}

		if (userAgeRange != null) {
			userAgeRange = userAgeRange.substring(0, 2);
		}
		if (joinDate != null) {
			joinDate = joinDate.substring(0, 10);
		}

		mv.addObject("inputId", inputId); // only number
		mv.addObject("email1", email1); // 카카오이메일 @ 앞부분
		mv.addObject("email2", email2); // 카카오이메일 @ 뒷부분
		mv.addObject("userGender", userGender); // male female
		mv.addObject("userAgeRange", userAgeRange); // 20~29
		mv.addObject("joinDate", joinDate); // 2018-08-21

		System.out.println(userGender);
		mv.setViewName("/sign/signUp.jsp");
		return mv;

	}

//	ID중복 체크 
	@RequestMapping("/idOverlapCheck.do")
	public ModelAndView idOverlapCheck(HttpServletRequest req, String id) {
		int idCheck = -1;

		if (id.equals("")) {

		} else {
			idCheck = memDao.idCheck(id);
		}
		mv.addObject("idCheck", idCheck);
		mv.setViewName("/sign/idCheck.jsp");
		return mv;
	}
//	닉네임 중복 체크 
	@RequestMapping("/nickNameCheck.do")
	public ModelAndView nickNameCheck(HttpServletRequest req, String nickName) {
		int Check = -1;
		
		if (nickName.equals("")) {
			
		} else {
			Check = memDao.nickNameCheck(nickName);
		}
		mv.addObject("Check", Check);
		mv.setViewName("/sign/nickNameCheck.jsp");
		return mv;
	}

//  PW 두개가 일치하는지 체크 
	@RequestMapping("equalPwCk.do")
	public ModelAndView equalPwCk(HttpServletRequest req, String pw1, String pw2) {
		int pwCheck = -1;

		if (pw1.equals("") || pw2.equals("")) {
			pwCheck = -1;
		} else if (pw1.equals(pw2)) {
			pwCheck = 1;
		} else {
			pwCheck = 0;
		}
		mv.addObject("pwCheck", pwCheck);
		mv.setViewName("/sign/pwCheck.jsp");
		return mv;
	}

//	회원가입하기 클릭시 
	@RequestMapping("/signUpPro.do")
	public ModelAndView signUpPro(HttpServletRequest req, MemberDto dto) {
		// dto에 회원정보 담기

		dto.setMem_id(req.getParameter("inputId"));
		dto.setMem_pw(req.getParameter("inputPw"));
		dto.setMem_nickname(req.getParameter("inputNickName"));
		dto.setMem_email(req.getParameter("email1") + "@" + req.getParameter("email2"));
		dto.setMem_gender(req.getParameter("gender"));
		dto.setMem_age_group(req.getParameter("ageRange"));
		dto.setMem_rocal(req.getParameter("mem_rocal"));
		dto.setMem_state(req.getParameter("mem_state"));
		dto.setMem_mng_gwonhan(0);
		dto.setMem_login_gwonhan(1);
		dto.setMem_board_gwonhan(1);

		// System.out.println(dto);
		// 회원정보 insert
		memDao.memInsert(dto);

		mv.setViewName("/sign/signUpPro.jsp");
		return mv;
	}
}
