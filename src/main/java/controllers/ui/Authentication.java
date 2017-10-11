package main.java.controllers.ui;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.java.model.user.User;
import main.java.model.user.UserManager;


/**
 * Servlet implementation class Authentication
 */
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentication() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if (session.isNew()){
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = null;
		try {
			user = UserManager.getInstance().findByUserName(request.getParameter("username"));
			if (user != null){
				
				if (user.getPassword().equals(request.getParameter("password"))){
					session.setAttribute("user", user);
					response.sendRedirect(request.getContextPath());
				} else {
					request.setAttribute("statusLogin", "invalid");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp"); 
					dispatcher.forward(request, response);
				}
			} else {
				request.setAttribute("statusLogin", "invalid");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp"); 
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		User user = new User();
		try {
			user = UserManager.getInstance().findByUserName("admin");
			if (user != null){
				System.out.println(user.getFullName());
			} else {
				System.out.println("Not exist");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
