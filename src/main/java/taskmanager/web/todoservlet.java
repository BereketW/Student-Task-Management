package taskmanager.web;

import java.io.IOException;


import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import adva.model.todo;

import taskmanager.dao.TodoDaoImpl;
import taskmanager.dao.tododao;





@WebServlet("/")
public class todoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private tododao todoDAO;

	public void init() {
		todoDAO = new TodoDaoImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/logout":
				userLogout(request, response);
				break;
			case "/insert":
				insertTodo(request, response);
				break;
			case "/delete":
				deleteTodo(request, response);
				break;
			case "/update":
				updateTodo(request, response);
				break;
			case "/list":
				listTodo(request, response);
				break;
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listTodo(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession();
		String username =(String) session.getAttribute("username");
		List<todo> listTodo = todoDAO.selectAllTodos(username);
		request.setAttribute("listTodo", listTodo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("todolist.jsp");
		dispatcher.forward(request, response);
	}

	
	
	private void insertTodo(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		
		String title = request.getParameter("title");
		String username = request.getParameter("username");
		String description = request.getParameter("description");
		
		
		
		String isDone = request.getParameter("isDone");
		todo newTodo = new todo(title, username, description, LocalDate.now(), isDone);
		todoDAO.insertTodo(newTodo);
		response.sendRedirect("todolist.jsp");
	}

	private void updateTodo(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		String title = request.getParameter("title");
		String username = request.getParameter("username");
		String description = request.getParameter("description");
		//DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-mm-dd");
		LocalDate targetDate = LocalDate.parse(request.getParameter("targetDate"));
		
		String isDone = request.getParameter("isDone");
		System.out.println(id);
		System.out.println(title);
		System.out.println(description);
		System.out.println(request.getParameter("targetDate"));
		System.out.println(isDone);
		todo updateTodo = new todo(id, title, username, description, targetDate, isDone);
		
		todoDAO.updateTodo(updateTodo);
		
		response.sendRedirect("todolist.jsp");
	}

	private void deleteTodo(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		todoDAO.deleteTodo(id);
		response.sendRedirect("list");
	}
	
	public void userLogout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
		HttpSession sess = request.getSession(false);
		if(sess!=null) {
			sess.invalidate();
		}
		response.sendRedirect("index.jsp");
	}
}