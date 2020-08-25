package Community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import CommunityModel.CommunityDao;

@Controller
public class CommunityController{
	CommunityDao dao = new CommunityDao();
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/Community_main.do")
	public ModelAndView community_main() {
		mv.setViewName("community/C_main.jsp");
		return mv;
	}
	@RequestMapping("/Community_list.do")
	public ModelAndView community_list() {
		mv.setViewName("community/C_list.jsp");
		return mv;
	}
	@RequestMapping("/Community_detail.do")
	public ModelAndView community_detail() {
		mv.setViewName("community/C_detail.jsp");
		return mv;
	}
	@RequestMapping("/Community_input.do")
	public ModelAndView community_input() {
		mv.setViewName("community/C_input.jsp");
		return mv;
	}
	
}
