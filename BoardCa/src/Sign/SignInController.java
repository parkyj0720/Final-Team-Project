package Sign;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
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

// 카카오 로그인 클릭시
	@RequestMapping("/kakaoSignPro.do")
	public ModelAndView kakaoSignPro(MemberDto dto, SessionDto sedto, HttpSession session, HttpServletRequest req)
			throws SAXException, IOException, ParserConfigurationException {

		String ip = req.getHeader("X-FORWARDED-FOR");
		if (ip == null) {
			ip = req.getRemoteAddr();

			sedto.setSess_ip(ip);
		}

		// 1.문서를 읽기위한 공장을 만들어야 한다.
		DocumentBuilderFactory fatory = DocumentBuilderFactory.newInstance();
		// 2.빌더를 생성
		DocumentBuilder builder = fatory.newDocumentBuilder();
		// 3.생성된 빌더를 통해서 xml문서를 Document객체로 파싱해서 가져온다.
		// Document org에서 가져온다!!!
		Document doc = builder.parse("http://whois.kisa.or.kr/openapi/ipascc.jsp?query=" + ip
				+ "&key=2020092812534662722565&answer=xml");
		NodeList list = doc.getElementsByTagName("countryCode");

		int i = 0;
		Element element;
		String country = null;

		while (list.item(i) != null) {
			element = (Element) list.item(i);
			country = element.getTextContent();
			i++;
		}
		// settingDto 에 나라 코드를 넣는다.
		sedto.setSess_field(country);

		String userId = req.getParameter("userId");
		String userToken = req.getParameter("userToken");

		int gwonhan = memDao.GwonhanCheck(userId);
		
		if(gwonhan==0) {
			
			mv.setViewName("/sign/cantlogin.jsp");
			return mv;
			
		}
		
		sedto.setSess_move("로그인(성공)");
		session.setAttribute("userId", userId);
		session.setAttribute("userToken", userToken);
		session.setAttribute("userToken2", "1");

		memDao.sessionInput(sedto);

		mv.setViewName("/main/main.jsp");

		return mv;
	}

//	일반 로그인 클릭시 
	@RequestMapping("/signPro.do")
	public ModelAndView signPro(MemberDto dto, SessionDto sedto, HttpSession session, HttpServletRequest req)
			throws SAXException, IOException, ParserConfigurationException {
		// memDao = new MemberDao();

		/*
		 * String ip = req.getHeader("X-FORWARDED-FOR");
		 * 
		 * if (ip == null) { ip = req.getRemoteAddr();
		 * 
		 * }
		 */

		InetAddress inetAddress= InetAddress.getLocalHost();
		String ip = inetAddress.getHostAddress();
		

		System.out.println(ip + "sssssssssssssssssssss");
		// 1.문서를 읽기위한 공장을 만들어야 한다.
		DocumentBuilderFactory fatory = DocumentBuilderFactory.newInstance();
		// 2.빌더를 생성
		DocumentBuilder builder = fatory.newDocumentBuilder();
		// 3.생성된 빌더를 통해서 xml문서를 Document객체로 파싱해서 가져온다.
		// Document org에서 가져온다!!!
		Document doc = builder.parse("http://whois.kisa.or.kr/openapi/ipascc.jsp?query=" + ip
				+ "&key=2020092812534662722565&answer=xml");
		NodeList list = doc.getElementsByTagName("countryCode");

		int i = 0;
		Element element;
		String country = null;

		System.out.println(doc);

		while (list.item(i) != null) {
			element = (Element) list.item(i);
			country = element.getTextContent();
			i++;
		}
		// settingDto 에 나라 코드를 넣는다.
		sedto.setSess_field(country);

		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");

		dto.setMem_id(userId);
		dto.setMem_pw(userPw);

//		작성한 아이디가 있는지 체크
		int idCheck = memDao.idCheck(userId);

		if (idCheck == 1) {
			String dbPw = memDao.signIn(userId);
			// 해당아이디의 비밀번호와 입력한 비밀번호가 맞는지 체크
			if (userPw.equals(dbPw)) {
				
				
				int gwonhan = memDao.GwonhanCheck(userId);
				
				if(gwonhan==0) {
					
					mv.setViewName("/sign/cantlogin.jsp");
					return mv;
					
				}
				
				
				
//				해당 아이디의 회원번호 가져오기
				int searchIdx = memDao.searchIdx(userId);

				sedto.setSess_ip(ip);
				sedto.setSess_move("로그인(성공)");
				sedto.setMem_idx(searchIdx);

				session.setAttribute("userId", userId);
				session.setAttribute("userToken2", "0");

				System.out.println("@@@@@@@@@" + sedto);
				memDao.sessionInput(sedto);
				mv.setViewName("/main/main.jsp");
			} else {
				sedto.setSess_move("로그인(실패)");
				mv.setViewName("/sign/signError.jsp");
			}
		} else {
			mv.setViewName("/sign/signError.jsp");
		}
		return mv;
	}

	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		mv.setViewName("/sign/logout.jsp");
		return mv;
	}

	@RequestMapping("/kakaoLogout.do")
	public ModelAndView kakaoLogout(HttpSession session, HttpServletRequest req) {
		final String RequestUrl = "https://kapi.kakao.com/v1/user/logout";

		String userToken = session.getAttribute("userToken").toString();
		System.out.println("1111111111111111@@@        " + userToken);

		try {
			URL url = new URL(RequestUrl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer " + userToken);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String result = "";
			String line = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}

			session.removeAttribute("userToken");
			session.removeAttribute("userId");

			session.invalidate();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mv.setViewName("/sign/logout.jsp");
		return mv;
	}

}
