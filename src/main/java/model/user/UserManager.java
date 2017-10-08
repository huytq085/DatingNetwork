package main.java.model.user;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

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
	
	public int insertUser(Map<String, String> params) throws SQLException{
		QueryRunner run = new QueryRunner();
		Connection conn = new DbConnection().getConnection();
		try {
          int inserts = run.update(conn, "INSERT INTO `dating_datastore`.`user` (`username`, `password`, `fullName`, `sex`, `description`, `purpose`, `email`, `Phone`, `status`, `dateAdded`, `lastAccess`) VALUES (?, ?, 'Huy Huy', 'Nam', 'Des', 'Pur', ?, '123456', 'ACT', '2014-10-03 11:12:21', '2014-10-03 11:12:21');", params.get("username"), params.get("password"), params.get("email"));
          return inserts;
      } catch (SQLException sqle) {
          // Handle it
          sqle.printStackTrace();
      }
		return 0;
			
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
