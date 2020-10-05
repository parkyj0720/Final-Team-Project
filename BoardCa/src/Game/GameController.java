package Game;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GameController {
	@Autowired
	private ModelAndView mv;
	@Autowired
	private GameDao dao;
	@RequestMapping("/gameMain.do")
	public ModelAndView gameMain(HttpServletRequest req) {
		int page = 1;
		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
			if (page <= 0)
				page = 1;
		}
		System.out.println("gameMain.do");
		List<GameDto> list = dao.getList();
		Collections.shuffle(list);
		mv.addObject("gameList", list);
		System.out.println(list);
		mv.setViewName("/game/gameMain.jsp?page=" + page);
		return mv;
	}
	@RequestMapping("/gameDetail.do")
	public ModelAndView gameDetail(HttpServletRequest req) {
		int GameNo = Integer.parseInt(req.getParameter("no"));
		GameDto dto = dao.detail(GameNo);
		List<GameDto> list = dao.getList();
		Collections.shuffle(list);
		mv.addObject("gameList", list);
		mv.addObject("dto", dto);
		mv.setViewName("/game/gameDetail.jsp");
		return mv;
	}
	@RequestMapping("/gameSearch.do")
	public ModelAndView gameSearch(HttpServletRequest req) {
		int page = 1;
		if (req.getParameter("page") != null) {
			page = Integer.parseInt(req.getParameter("page"));
			if (page <= 0)
				page = 1;
		}
		String keyword = req.getParameter("inputSearch");
		mv.addObject("gameList", dao.getSearchList(keyword));
		mv.addObject("inputSearch", keyword);
		mv.setViewName("/game/gameMain.jsp?page=" + page);
		return mv;
	}
}
