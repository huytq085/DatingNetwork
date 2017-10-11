package main.java.model.user;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import main.java.common.DbConnection;
import main.java.common.JsonUtils;

public class FriendManager {
	private static FriendManager friendManager;

	public FriendManager() {
	};

	public static FriendManager getInstance() {
		if (friendManager == null) {
			friendManager = new FriendManager();
		}
		return friendManager;
	}

	public static List<Friend> findFriends(User user) throws SQLException {
		QueryRunner run = new QueryRunner();
		Connection conn = new DbConnection().getConnection();
		ResultSetHandler<List<Friend>> resultListHandler = new BeanListHandler<Friend>(Friend.class);
		try {
			List<Friend> frList = run.query(conn, "SELECT * FROM friend where user1=" + user.getId(), resultListHandler);
			if (frList.size() > 0) {
				return frList;
			}
			
		} finally {
			DbUtils.close(conn);
		}
		return null;
	}

	public static void main(String[] args) {
		try {
			User user = new User();
			user.setId(1);
			user.setFriends(findFriends(user));
			for (Friend fr : user.getFriends()) {
				System.out.println(fr.getUser2());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
