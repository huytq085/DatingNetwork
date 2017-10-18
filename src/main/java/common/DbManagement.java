package main.java.common;

import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.google.gson.reflect.TypeToken;

import main.java.model.user.Friend;
import main.java.model.user.FriendManager;
import main.java.model.user.User;

public class DbManagement {
private static DbManagement dbManagement;
	
	public DbManagement(){
		
	}
	
	public static DbManagement getInstance(){
		if(dbManagement == null){
			dbManagement = new DbManagement();
		}
		return dbManagement;
	}
	
	
	public <T> T executeQuery(String statement, Class<T> clazz){
		QueryRunner run = new QueryRunner();
		ResultSetHandler<T> resultHandler = new BeanHandler<T>(clazz);
		Connection conn;
		try {
			conn = new DbConnection().getConnection();
			try {
				System.out.println(statement);
	        	T t = run.query(conn, statement, resultHandler);
	        	if (t != null){
	        		return t;
	        	}
	        } finally {
	            DbUtils.close(conn);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public <T> List<T> findAll(String statement, Class<T> clazz) {
		QueryRunner run = new QueryRunner();
		List<T> list = new ArrayList<T>();
		try {
			Connection conn = new DbConnection().getConnection();
			ResultSetHandler<List<T>> resultListHandler = new BeanListHandler<T>(clazz);
			try {
				list = run.query(conn, statement, resultListHandler);
			} catch (Exception e) {
				// TODO: handle exception
			} finally {
				DbUtils.close(conn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public int insert(String tableName, Map<String, Object> params){
		QueryRunner run = new QueryRunner();
		try {
			Connection conn = new DbConnection().getConnection();
			String statement = "INSERT INTO %s %s";
			String preStatement = "(%s) VALUES (%s)";
			Object[] key = params.keySet().toArray();
			for (int i = 0; i< params.size(); i++){
				if (i == params.size()-1){
					preStatement = String.format(preStatement, key[i],"?");
				} else {
					preStatement = String.format(preStatement, key[i] + ",%s","?,%s");
				}
			}
			System.out.println(String.format(statement, tableName, preStatement));
			int inserts = run.update(conn, String.format(statement, tableName, preStatement), params.values().toArray());
			return inserts;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	return 0;
    }
	public int update(String tableName, Map<String, Object> params, String condition){
		QueryRunner run = new QueryRunner();
		try {
			Connection conn = new DbConnection().getConnection();
			String statement = "UPDATE %s SET %s WHERE %s";
			String preStatement = "";
			Object[] key = params.keySet().toArray();
			for (int i = 0; i< params.size(); i++){
				if (i == params.size()-1){
					preStatement = preStatement.concat((String)key[i] + "=?");
				} else {
					preStatement = preStatement.concat((String)key[i] + "=?,");
				}
			}
			System.out.println(String.format(statement, tableName, preStatement,condition));
			int inserts = run.update(conn, String.format(statement, tableName, preStatement,condition), params.values().toArray());
			return inserts;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return 0;
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
