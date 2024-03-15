package taskmanager.web;


import java.io.PrintWriter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.utils.JDBCUtils;
import adva.model.user;
import taskmanager.dao.userdao;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class Userservlet
 */
@WebServlet("/Userservlet")
public class Userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	    private userdao userDao;

	    public void init() {
	        userDao = new userdao();
	    }

    public Userservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		register(request, response);
		//doGet(request, response);
	}
	
	
	 private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	        String firstName = request.getParameter("firstname");
	        String lastName = request.getParameter("lastname");
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        user customer = new user();
	        customer.setFirstName(firstName);
	        customer.setLastName(lastName);
	        customer.setUsername(username);
	        customer.setPassword(password);
	        
	        
	        
	      
	        

	        try {
	            int result = userDao.registerUser(customer);
	            
	            if (result == 1) {
	            	 RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	     	        dispatcher.forward(request, response);
	               // request.setAttribute("NOTIFICATION", "User Registered Successfully!");
	            }
	            else {
	            	RequestDispatcher dispatcher = request.getRequestDispatcher("signup.jsp");
	     	        dispatcher.forward(request, response);
	            }

	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }

	       

}}
