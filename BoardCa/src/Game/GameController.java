package Game;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {

	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private GameDao dao;
	
	@RequestMapping("/gameMain.do")
	public ModelAndView gameMain() {
		System.out.println("gameMain.do");
		List<GameDto> list = dao.getList();
		mv.addObject("gameList",list);
		System.out.println(list);
		mv.setViewName("/game/gameMain.jsp");
		return mv;
	}
	@RequestMapping("/gameDetail.do")
	public ModelAndView gameDetail(HttpServletRequest req) {
		int GameNo = Integer.parseInt(req.getParameter("no"));
		GameDto dto = dao.detail(GameNo);
		mv.addObject("dto",dto);
		mv.setViewName("/game/gameDetail.jsp");
		return mv;
	}
}
