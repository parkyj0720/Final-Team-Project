package Sign;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import Member.MemberDao;
import Member.MemberDto;

@Controller
public class SignInController {

	
	@Autowired
	private ModelAndView mv;
	
	@Autowired
	private MemberDao memDao;
	
	@RequestMapping("/signIn.do")
	public ModelAndView signIn() {
		mv.setViewName("/sign/signIn.jsp");
		return mv;
	}
	@RequestMapping("/signPro.do")
	public ModelAndView signPro(MemberDto dto,SessionDto sedto, HttpSession session,HttpServletRequest req)
			throws SAXException, IOException, ParserConfigurationException {
		//memDao = new MemberDao();
		String ip = req.getHeader("X-FORWARDED-FOR");
		if(ip == null) {
			ip = req.getRemoteAddr();
			
			sedto.setIp(ip);
		}
		
		//1.문서를 읽기위한 공장을 만들어야 한다.
		DocumentBuilderFactory fatory = DocumentBuilderFactory.newInstance();
		//2.빌더를 생성
		DocumentBuilder builder = fatory.newDocumentBuilder();
		//3.생성된 빌더를 통해서 xml문서를 Document객체로 파싱해서 가져온다.
        //Document org에서 가져온다!!!
		Document doc = builder.parse("http://whois.kisa.or.kr/openapi/ipascc.jsp?query=192.168.219.111&key=2020081914462601995405&answer=xml");
		NodeList list = doc.getElementsByTagName("countryCode");
		
		int i = 0;
		Element element;
		String country = null;
		
		while(list.item(i) != null){
			element = (Element) list.item(i);
			country = element.getTextContent();
			i++;
		}
		//settingDto 에 나라 코드를 넣는다.
		sedto.setPlace(country);
		
		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");
		
		dto.setMem_id(userId);
		dto.setMem_pw(userPw);
		
		int idCheck = memDao.idCheck(userId); 
		if(idCheck==1) {
			String dbPw = memDao.signIn(userId);
			if(userPw.equals(dbPw)) {
				sedto.setMove("로그인(성공)");
				session.setAttribute("userId", userId);
				mv.setViewName("/main/main.jsp");
			}else {
				sedto.setMove("로그인(실패)");
				mv.setViewName("/sign/signError.jsp");
			}			
		}else {
			mv.setViewName("/sign/signError.jsp");
		}
		
		
		return mv;
	}

	

	
	
	
	
}
