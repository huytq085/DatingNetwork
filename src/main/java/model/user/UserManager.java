package main.java.model.user;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import main.java.common.DbConnection;
import main.java.common.DbManagement;
import main.java.common.JsonUtils;

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
	
	public User findByEmail(String email) throws Exception{
		QueryRunner run = new QueryRunner();
		ResultSetHandler<User> resultHandler = new BeanHandler<User>(User.class);
		Connection conn = new DbConnection().getConnection();
        try {
        	User user = run.query(conn, "SELECT * FROM user WHERE email=?",
                    resultHandler, email);
        	return user;
            
        } finally {
            DbUtils.close(conn);
        }
	}
	
	public User findByUserName(String username) throws Exception{
		QueryRunner run = new QueryRunner();
		ResultSetHandler<User> resultHandler = new BeanHandler<User>(User.class);
		Connection conn = new DbConnection().getConnection();
        try {
        	User user = run.query(conn, "SELECT * FROM user WHERE username=?",
                    resultHandler, username);
        	return user;
            
        } finally {
            DbUtils.close(conn);
        }
	}
	
	public int update(User user) throws SQLException{
		int result = 0;
		
		String data = JsonUtils.encode(user);
		Map<String, Object> params = JsonUtils.decode(data, Map.class);
		params.put("dateAdded", "2014-10-03 11:12:21");
		try {
			User row = findByUserName(user.getUserName());
			if (row == null){
				result = DbManagement.getInstance().insert("user", params);
			} else {
				return 0;
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
