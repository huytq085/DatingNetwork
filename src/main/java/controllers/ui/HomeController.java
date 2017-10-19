package main.java.controllers.ui;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.java.common.DbConnection;
import main.java.common.DbManagement;
import main.java.common.JsonUtils;
import main.java.model.user.User;
import main.java.model.user.UserManager;

/**
 * Servlet implementation class BaseController
 */
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("here");
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String requestUrl = request.getServletPath();
		if (requestUrl != null) {
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
			case "":
				index(request, response);
				break;
			case "/category":
				category(request, response);
				break;
			case "/account/settings":
				settings(request, response);
				break;
			case "/account/update":
				updateAccount(request, response);
				break;
			default:
				break;
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void index(HttpServletRequest request, HttpServletResponse response) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/index.jsp");
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

	public void category(HttpServletRequest request, HttpServletResponse response) {
		String sex = request.getPathInfo().split("/")[1];
		System.out.println("sex");
		if (sex != null && sex.toLowerCase().matches("male|female|gay|les")) {
			List<User> listProfile = new ArrayList<>();
			String stm = "SELECT * FROM user WHERE sex=\"" + sex + "\"";
			listProfile = DbManagement.getInstance().findAll(stm, User.class);
			if (listProfile.size() > 0) {
				System.out.println("list");
				request.setAttribute("listProfile", listProfile);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/category.jsp");
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
		} else {
			try {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	private void signin(HttpServletRequest request, HttpServletResponse response) {
		if (request.getMethod().equals("POST")) {
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
			RequestDispatcher dispather = request.getRequestDispatcher("/view/ui/home/login.jsp");
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

	private void signout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null) {
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

	private void user(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getPathInfo().split("/")[1];
		System.out.println("profileInfo: " + username);

		try {
			User user = UserManager.getInstance().findByUserName(username);
			if (user != null) {
				request.setAttribute("userProfile", user);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/profile.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void hotProfile(HttpServletRequest request, HttpServletResponse response) {
		List<User> listProfile = new ArrayList<User>();
		String stm = "SELECT * FROM user";
		listProfile = DbManagement.getInstance().findAll(stm, User.class);
		try {
			response.setContentType("application/json");
			response.getWriter().write(JsonUtils.encode(listProfile));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String getHotProfile() {
		List<User> listProfile = new ArrayList<User>();
		String stm = "SELECT * FROM user";
		listProfile = DbManagement.getInstance().findAll(stm, User.class);
		return listProfile.size() > 0 ? JsonUtils.encode(listProfile) : null;
	}

	
	public void settings(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null){
			try {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/settings.jsp");
				dispatcher.forward(request, response);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.sendError(HttpServletResponse.SC_NOT_FOUND);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		

	}

	private void signup(HttpServletRequest request, HttpServletResponse response) {
		if (request.getMethod().equals("POST")) {
			HttpSession session = request.getSession();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String fullName = request.getParameter("fullName");
			String sex = request.getParameter("sex");
			String matrimony = request.getParameter("matrimony");
			String description = request.getParameter("description");
			String avatar = request.getParameter("avatar");
			String city = request.getParameter("city");
			String address = request.getParameter("address");
			if (avatar == null){
				avatar = getServletContext().getInitParameter("defaultAvatar");
			}
			User user = new User();
			user.setFullName(fullName);
			user.setEmail(email);
			user.setUserName(username);
			user.setPassword(password);
			user.setSex(sex);
			user.setStatus("ACT");
			user.setMatrimony(matrimony);
			user.setAvatar(avatar);
			user.setDescription(description);
			user.setCity(city);
			user.setAddress(address);
			
			try {
				if (UserManager.getInstance().update(user) != 0) {
					session.setAttribute("user", user);
					Cookie userCookie = new Cookie("statusSignup", "success");
					response.addCookie(userCookie);
					response.sendRedirect(request.getContextPath());
				} else {
					request.setAttribute("statusSignup", "invalid");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/register.jsp");
					dispatcher.forward(request, response);

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/ui/home/register.jsp");
				dispatcher.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
	private void updateAccount(HttpServletRequest request, HttpServletResponse response) {
		if (request.getMethod().equals("POST")) {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			session.removeAttribute("user");
			if (user != null){
				System.out.println("!= null");
				String email = request.getParameter("email");
				String fullName = request.getParameter("fullName");
				String sex = request.getParameter("sex");
				String matrimony = request.getParameter("matrimony");
				String description = request.getParameter("description");
				System.out.println("Test: Cập nhật");
				System.out.println(description);
				String avatar = request.getParameter("avatar");
				String city = request.getParameter("city");
				String address = request.getParameter("address");
				if (avatar == null){
					avatar = getServletContext().getInitParameter("defaultAvatar");
				}
				user.setFullName(fullName);
				user.setEmail(email);
				user.setSex(sex);
				user.setStatus("ACT");
				user.setMatrimony(matrimony);
				user.setAvatar(avatar);
				user.setDescription(description);
				user.setCity(city);
				user.setAddress(address);
				
				try {
					if (UserManager.getInstance().update(user) != 0) {
						Cookie userCookie = new Cookie("statusUpdate", "success");
						response.addCookie(userCookie);
						System.out.println("statusUpdate success");
						session.setAttribute("user", user);
						response.sendRedirect(request.getContextPath() + "/account/settings");
						
					} else {
						System.out.println("error");
						Cookie userCookie = new Cookie("statusUpdate", "error");
						response.addCookie(userCookie);
						session.setAttribute("user", UserManager.getInstance().findByUserName(user.getUserName()));
						response.sendRedirect(request.getContextPath() + "/account/settings");

					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				try {
					response.sendError(HttpServletResponse.SC_NOT_FOUND);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
}
