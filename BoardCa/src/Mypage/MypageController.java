package Mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/myPage.do")
	public ModelAndView myPage() {
		mv.setViewName("/mypage/myPage.jsp");
		return mv;
	}
}
