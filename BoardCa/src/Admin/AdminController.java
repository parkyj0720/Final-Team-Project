package Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import CommunityModel.CoDao;
import CommunityModel.CommunityDto;
import Member.AgeRangeDto;
import Member.AreaDto;
import Member.GenderDto;
import Member.GwonhanDto;
import Member.MemberDao;

@Controller
public class AdminController {
	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private MemberDao MemberDao;
	
	@Autowired
	private CoDao CoDao;
	
	@RequestMapping("/adminPage.do")
	public ModelAndView myPage(HttpServletRequest request) {
		
		mv.setViewName("/admin/adminPage.jsp");
		
		List<Object> g = MemberDao.Gender();
		
		GenderDto gender = (GenderDto)g.get(0); 
		
		int man = gender.getMan();
		
		int woman = gender.getWoman();
		
		int secret = gender.getSecret();
		
		// DB를 활용해 남성과 여성의 수를 카운트 한다.
		
		request.setAttribute("man", man);
		request.setAttribute("woman", woman);
		request.setAttribute("secret", secret);
		
		// request에 카운트한 값들을 넣어준다. 
		
		
		List<Object> area = MemberDao.Area();
		
		AreaDto ar = (AreaDto)area.get(0);
		
		int area1 = ar.getArea1(); //서울
		int area2 = ar.getArea2(); //인천
		int area3 = ar.getArea3(); //대전
		int area4 = ar.getArea4(); //광주
		int area5 = ar.getArea5(); //대구
		int area6 = ar.getArea6(); //울산
		int area7 = ar.getArea7(); //부산
		int area8 = ar.getArea8(); //경기
		int area9 = ar.getArea9(); //강원
		int area10 = ar.getArea10(); //충북
		int area11 = ar.getArea11(); //충남
		int area12 = ar.getArea12(); //전북
		int area13 = ar.getArea13(); //전남
		int area14 = ar.getArea14(); //경북
		int area15 = ar.getArea15(); //경남
		int area16 = ar.getArea16(); //제주
		int areas = ar.getAreas(); //비공개
		
		request.setAttribute("area1", area1);
		request.setAttribute("area2", area2);
		request.setAttribute("area3", area3);
		request.setAttribute("area4", area4);
		request.setAttribute("area5", area5);
		request.setAttribute("area6", area6);
		request.setAttribute("area7", area7);
		request.setAttribute("area8", area8);
		request.setAttribute("area9", area9);
		request.setAttribute("area10", area10);
		request.setAttribute("area11", area11);
		request.setAttribute("area12", area12);
		request.setAttribute("area13", area13);
		request.setAttribute("area14", area14);
		request.setAttribute("area15", area15);
		request.setAttribute("area16", area16);
		request.setAttribute("areas", areas);
		
		
		
		List<Object> age = MemberDao.AgeRange();
		
		AgeRangeDto agerange = (AgeRangeDto)age.get(0);
		
		int twenty = agerange.getTwenty();
		int thirty = agerange.getThirty();
		int forty = agerange.getForty();
		int fifty = agerange.getFifty();
		int agesecret = agerange.getSecret();		
		
		// DB를 활용해 유저의 나잇대를 카운트한다.
		
		request.setAttribute("twenty", twenty);
		request.setAttribute("thirty", thirty);
		request.setAttribute("forty", forty);
		request.setAttribute("fifty", fifty);
		request.setAttribute("agesecret", agesecret);
		
		// request에 카운트한 값들을 넣어준다. 
		
		
		return mv;
	}
	@RequestMapping("/adminEdit.do")
	public ModelAndView myPageEdit(HttpServletRequest request) {
				
		mv.setViewName("/admin/adminEdit.jsp");
		
				
		List<Object> list = MemberDao.ListAll(); // 멤버 DB를 가져옴
		
		request.setAttribute("memlist", list); // request에 DB에서 가져온 리스트를 넣음
		
		return mv;
	}
	
	@RequestMapping(value = "/adminmodify.do", method = RequestMethod.POST, produces="application/json")
	@ResponseBody
	public int adminmodify(GwonhanDto data,HttpServletRequest request, HttpSession session) {
		
		System.out.println("ajax 성공");
		
		System.out.println(data);
		
		MemberDao.GwonhanModify(data);
		
		return data.getGwonhancode();
		
	}
	
	
	
	@RequestMapping("/adminList.do")
	public ModelAndView adminList(HttpServletRequest request) {
				
		mv.setViewName("/admin/adminList.jsp");
		
		int num = 4;
		
		List<CommunityDto> rplist = CoDao.List(num);
		System.out.println(rplist); 
		 
		request.setAttribute("rplist", rplist);		
		
		return mv;
	}

	@RequestMapping("/adminFAQ.do")
	public ModelAndView adminFAQ(HttpServletRequest request) {
		mv.setViewName("/admin/adminFAQ.jsp");
		return mv;
	}
	  
	 /* @RequestMapping("/myFavorite.do") public ModelAndView myFavoriteList() {
	 * mv.setViewName("/mypage/myfavorite.jsp"); return mv; }
	 */
	
}
