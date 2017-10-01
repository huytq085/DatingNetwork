package main.java.model.user;

import java.sql.Connection;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import main.java.common.DbConnection;

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
	
	public User findByUserName(String userName) throws Exception{
		QueryRunner run = new QueryRunner();
		ResultSetHandler<User> resultHandler = new BeanHandler<User>(User.class);
		Connection conn = new DbConnection().getConnection();
        try {
        	User user = run.query(conn, "SELECT * FROM user WHERE userName=?",
                    resultHandler, userName);
        	return user;
            
        } finally {
            DbUtils.close(conn);
        }
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
