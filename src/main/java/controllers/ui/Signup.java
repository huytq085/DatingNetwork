package main.java.controllers.ui;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.model.user.User;
import main.java.model.user.UserManager;

public class Signup extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Map<String, String> params = new HashMap<String, String>();
		params.put("userName", userName);
		params.put("password", password);
		params.put("email", email);
		try {
			if (UserManager.getInstance().insertUser(params)==1){
				request.setAttribute("statusSignup", "success");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("statusSignup", "invalid");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/register.jsp");
				dispatcher.forward(request, response);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
}