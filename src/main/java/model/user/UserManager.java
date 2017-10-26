package main.java.model.user;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import main.java.common.DbManagement;
import main.java.model.article.Article;
import main.java.model.article.ArticleManager;

public class UserManager {
	
	private static UserManager userManager;
	
	public UserManager(){
		
	}
	
	public static UserManager getInstance(){
		if(userManager == null){
			userManager = new UserManager();
		}
		return userManager;
	}
	
	public List<User> getNewProfile(){
		List<User> list = new ArrayList<User>();
		
		return list;
	}
	
	public User findByUserName(String username) throws Exception{
		String statement = "SELECT * FROM user WHERE username=\""+username+"\"";
		User user = (User) DbManagement.getInstance().executeQuery(statement, User.class);
    	if (user != null){
    		List<Friend> friendList = FriendManager.getInstance().findFriends(user);
    		if (friendList.size() > 0){
    			user.setFriends(friendList);
    		}
    		List<Article> articleList = new ArrayList<Article>();
    		articleList = ArticleManager.getInstance().findArticles(user);
    		if (!articleList.isEmpty() && articleList.size() > 0){
    			user.setArticles(articleList);
    		}
    		return user;
    	}
    	return null;
	}
	
	public int update(User user) throws SQLException{
		int result = 0;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", user.getUserName());
		params.put("password", user.getPassword());
		params.put("address", user.getAddress());
		params.put("sex", user.getSex());
		params.put("fullName", user.getFullName());
		params.put("description", user.getDescription());
		params.put("avatar", user.getAvatar());
		params.put("email", user.getEmail());
		params.put("matrimony", user.getMatrimony());
		params.put("status", user.getStatus());
		params.put("dateAdded", new Date());
		try {
			User row = findByUserName(user.getUserName());
			if (row == null){
				result = DbManagement.getInstance().insert("user", params);
			} else {
				result = DbManagement.getInstance().update("user", params, "username=\"" + user.getUserName() + "\"");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
			
	}
	
	
	public static void main(String[] args) {
//		User user = new User();
//		try {
//			user = findByUserName("admisn");
//			if (user != null){
//				System.out.println(user.getFullName());
//			} else {
//				System.out.println("Not exist");
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	
}
