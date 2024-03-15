package taskmanager.web;



import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import taskmanager.dao.TodoDaoImpl;
import taskmanager.dao.logindao;
import taskmanager.dao.tododao;
import adva.model.loginbean;
import adva.model.todo;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private logindao loginDao;

	public void init() {
		loginDao = new logindao();
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		authenticate(request, response);
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		loginbean loginBean = new loginbean();
		loginBean.setUsername(username);
		loginBean.setPassword(password);
		
		try {
			if (loginDao.validate(loginBean)) {
				
				
//	            request.setAttribute("userTaskList", userTaskList);
//				request.setAttribute("username", username);
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				RequestDispatcher dispatcher = request.getRequestDispatcher("todolist.jsp");
				dispatcher.forward(request, response);
				
			} else {
				
				request.setAttribute("Error", "error");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
				// session.setAttribute("user", username);
				// response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}