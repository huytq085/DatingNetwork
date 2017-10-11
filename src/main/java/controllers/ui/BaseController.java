package main.java.controllers.ui;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.java.common.DbConnection;
import main.java.model.user.Friend;
import main.java.model.user.FriendManager;
import main.java.model.user.User;
import main.java.model.user.UserManager;

/**
 * Servlet implementation class BaseController
 */
public class BaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
		String requestUrl = request.getServletPath();
		if (requestUrl != null){
			System.out.println(requestUrl);
			switch (requestUrl) {
			case "/hotprofile":
				hotProfile(request, response);
				break;
			case "/signin":
				signin(request, response);
				break;
			case "/signup":
				signup(request, response);
				break;
			case "/signout":
				signout(request, response);
				break;
			case "/user":
				user(request, response);
				break;
			case "/index":
				index(request, response);
				break;
			default:
				break;
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void index(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user.getUserName());
		RequestDispatcher dispatcher =  request.getRequestDispatcher("/");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void signin(HttpServletRequest request, HttpServletResponse response){
		if (request.getMethod().equals("POST")){
			RequestDispatcher dispather = request.getRequestDispatcher("/auth");
			try {
				dispather.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			RequestDispatcher dispather = request.getRequestDispatcher("/login.jsp");
			try {
				dispather.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}
	
	private void signout(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null){
			session.removeAttribute("user");
		}
		try {
			System.out.println("signout");
			response.sendRedirect(request.getContextPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void user(HttpServletRequest request, HttpServletResponse response){
		String username = request.getPathInfo().split("/")[1];
		System.out.println("profileInfo: " + username);
		
		try {
			User user = UserManager.getInstance().findByUserName(username);
			if (user != null){
				FriendManager.getInstance();
				List<Friend> listFriend = FriendManager.findFriends(user);
				request.setAttribute("listFriend", listFriend);
				request.setAttribute("userProfile", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void hotProfile(HttpServletRequest request, HttpServletResponse response){
		String profiles = getHotProfile();
		try {
			response.setContentType("application/json");
			response.getWriter().write(profiles);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String getHotProfile(){
		QueryRunner run = new QueryRunner();
		Connection conn;
		List<String> listProfile = new ArrayList<String>();
		try {
			conn = new DbConnection().getConnection();
			try {
		          List<Map<String, Object>> maps = run.query(conn, "SELECT * FROM user", new MapListHandler());
	      		  Gson gson = new GsonBuilder().create();
		          for (int i = 0; i < maps.size(); i++) {
		        	  listProfile.add(gson.toJson(maps.get(i)));
		          }
		      } finally {
		          DbUtils.close(conn);
		      }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listProfile.size() > 0 ? listProfile.toString() : null;
	}
	
	public String getProfile(String username){
		String result = "";
		return result;
		
	}
	private void signup(HttpServletRequest request, HttpServletResponse response){
		if (request.getMethod().equals("POST")){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			Map<String, String> params = new HashMap<String, String>();
			User user = new User();
//			Test
			user.setFullName("Au Tuan Long");
			user.setEmail(email);
			user.setUserName(username);
			user.setPassword(password);
			user.setSex("Nam");
			user.setStatus("ACT");
			user.setAddress("HCMC");
//			/Test
			try {
				if (UserManager.getInstance().update(user) != 0){
					request.setAttribute("statusSignup", "success");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
					dispatcher.forward(request, response);
				} else {
					request.setAttribute("statusSignup", "invalid");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/register.jsp");
					dispatcher.forward(request, response);

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.sendRedirect("register.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
