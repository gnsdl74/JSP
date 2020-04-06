package edu.web.homework;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contact")
public class ContactRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ContactRegServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); // 해당 데이터를 UTF-8로 인코딩
		response.setContentType("text/html; charset=UTF-8"); // 데이터를 받을 곳에 UTF-8이라고 알림
		request.setCharacterEncoding("UTF-8"); // 입력받은 데이터를 UTF-8로 해석
		
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		ArrayList<ContactVO> list = new ArrayList<>();
		ContactVO vo = new ContactVO(name, phone, email);
		list.add(vo);
		vo = new ContactVO("홍길동", "010-5555-5555", "Hong@gmail.com");
		list.add(vo);
		vo = new ContactVO("광어", "010-2222-3333", "Gwung@test.com");
		list.add(vo);
		vo = new ContactVO("우럭", "010-1234-5678", "Woo@daum.net");
		list.add(vo);
		
		request.setAttribute("list", list);
		
		ServletContext context = getServletContext();
		RequestDispatcher dp = context.getRequestDispatcher("/Homework/HW2.jsp");
		
		dp.forward(request, response);
	}

}
