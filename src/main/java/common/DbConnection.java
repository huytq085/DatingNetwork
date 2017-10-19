package main.java.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import main.java.model.user.User;

public class DbConnection {
	private static DbConnection dbConn;
	private static final String url = "jdbc:mysql://localhost:3306/dating_datastore?useSSL=false&characterEncoding=UTF-8";
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String usr = "root";
    final String pwd = "abc@123";

    
	public DbConnection(){
		
	}
	public static DbConnection getInstance(){
		if(dbConn == null)
			dbConn = new DbConnection();
		
		return dbConn;
	}
	public Connection getConnection() throws SQLException{
		DbUtils.loadDriver(driver);
		Connection conn = DriverManager.getConnection(url, usr, pwd);
		return conn;
	}
	public static void main(String[] args) {
		QueryRunner run = new QueryRunner();
		
		try {
			ResultSetHandler<User> resultHandler = new BeanHandler<User>(User.class);
			Connection conn = new DbConnection().getConnection();
	        try {
	        	User user = run.query(conn, "SELECT * FROM user WHERE username=?",
                        resultHandler, "admin");
                if (user != null){
                	System.out.println(user.getUserName());
                } else {
                	System.out.println("Not exist");
                }
	        } finally {
	            DbUtils.close(conn);
	        }
			DbConnection.getInstance().getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
}
