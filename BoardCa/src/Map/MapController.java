package Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {
	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/search_list.do")
	public ModelAndView search_list() {
		mv.setViewName("/map/search_list.jsp");
		return mv;
	}
}
