package Game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {

	@Autowired
	private ModelAndView mv;
	
	@RequestMapping("/gameMain.do")
	public ModelAndView gameMain() {
		mv.setViewName("/game/gameMain.jsp");
		return mv;
	}
	@RequestMapping("/gameDtail.do")
	public ModelAndView gameDtail() {
		mv.setViewName("/game/gameDtail.jsp");
		return mv;
	}
}
