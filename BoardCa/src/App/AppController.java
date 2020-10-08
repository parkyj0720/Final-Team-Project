package App;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AppController  {
	
	@Autowired
	AppDao dao;
	
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/app_input.do")
	public ModelAndView app_input(HttpServletRequest request) {
		System.out.println("app_input");
		mv.setViewName("/app/app_member.jsp");
		return mv;
	}
	
	@RequestMapping("/app_idpw.do")
	public ModelAndView app_idpw(HttpServletRequest request) {
		System.out.println("app_idpw");
		mv.setViewName("/app/app_idpw.jsp");
		return mv;
	}
	
	@RequestMapping("/app_sign.do")
	public ModelAndView app_sign(HttpServletRequest request) {
		System.out.println("app_sign");
		mv.setViewName("/app/app_sign.jsp");
		return mv;
	}
	
	@RequestMapping("/app_nomal_sign.do")
	public ModelAndView app_nomal_sign(HttpServletRequest request) {
		System.out.println("app_nomal_sign");
		mv.setViewName("/app/app_nomal_sign.jsp");
		return mv;
	}

//	@RequestMapping(value = "/app_member.do", method = RequestMethod.POST)
//	@ResponseBody
//	public void app_input_content(AppDto data, HttpServletRequest request) {
//		System.out.println(data);
//			
//		AppDto dto = new AppDto(0, data.getMem_id(), data.getMem_nickname(), "", data.getMem_gender(), data.getMem_age_group(), data.getMem_email(), "", "", 0, 1, 1, null);
//		dao.insert(dto);
//	}
}
