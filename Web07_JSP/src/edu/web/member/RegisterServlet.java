package edu.web.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static MemberDAO dao;
       
    public RegisterServlet() {
    	dao = MemberDAOImple.getInstance();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 경로 변경(URL을 직접입력해서 접근할 때)
		response.sendRedirect("/Web07_JSP/18_db_connection.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memberInsert(request, response);
	}

	private void memberInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String emailAgree = request.getParameter("emailAgree");
		String[] interest = request.getParameterValues("interest");
		String introduce = request.getParameter("introduce");
		
		MemberVO vo = new MemberVO(userId, password, email, phone, emailAgree, interest, introduce);
		System.out.println(vo);
		
		int result = dao.insert(vo);
		System.out.println(result);
		
		if(result == 1) {
			// 세션으로 보여주는 방법
//			HttpSession session = request.getSession();
//			session.setAttribute("userId", vo.getUserId());
//			session.setMaxInactiveInterval(60);
//			response.sendRedirect("18_db_result.jsp");
			
			// 요청받은 request를 포워딩하는 방법
			RequestDispatcher dp = request.getRequestDispatcher("18_db_result.jsp");
			request.setAttribute("vo", vo);
			dp.forward(request, response);
		}
			
	}

}
