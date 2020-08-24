package Community;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import CommunityModel.CommunityDao;
import CommunityModel.CommunityDto;


@WebServlet("/Community/*")
public class CommunityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String viewName="";
	CommunityDao dao = new CommunityDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("CommunityController호출");
		String action = request.getParameter("action");
		if("C_main".equals(action)) {
			ArrayList<CommunityDto> list1 = dao.Main1();
			ArrayList<CommunityDto> list2 = dao.Main2();
			ArrayList<CommunityDto> list3 = dao.Main3();
			ArrayList<CommunityDto> list4 = dao.Main4();
			request.setAttribute("list1", list1);
			request.setAttribute("list2", list2);
			request.setAttribute("list3", list3);
			request.setAttribute("list4", list4);
			
			viewName = "/community/Cmain.jsp";
		}
		else if("C_list".equals(action)) {
			viewName = "/community/Clist.jsp";
		}
		else if("C_Input".equals(action)) {
			viewName = "/community/Cinput.jsp";
		}
		RequestDispatcher view = request.getRequestDispatcher(viewName);
		view.forward(request, response);
	}

}
