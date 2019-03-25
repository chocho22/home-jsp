package test.jsp.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.jsp.study.service.UserService;
import test.jsp.study.service.impl.UserServiceImpl;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService us = new UserServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		String cmd = request.getParameter("cmd");
		if(cmd==null) {
			pw.print("커맨드 없는 요청은 정상적인 요청이 아닙니다.");
		} else {
			if("users".equals(cmd)) {
				pw.print(us.selectUserList(null));
			} else if ("user".equals(cmd)) {
				String uiNum = request.getParameter("ui_num");
				if(uiNum==null || "".equals(uiNum)) {
					pw.print("누구를 조회해???????");
				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
