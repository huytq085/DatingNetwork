package main.java.common;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;

import main.java.model.user.User;

public class DbManagement {
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
