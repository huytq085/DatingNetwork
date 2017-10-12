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

	public List<Friend> findFriends(User user) throws SQLException {
		QueryRunner run = new QueryRunner();
		Connection conn = new DbConnection().getConnection();
		ResultSetHandler<List<Friend>> resultListHandler = new BeanListHandler<Friend>(Friend.class);
		List<Friend> friendList = new ArrayList<Friend>();
		try {
			friendList = run.query(conn, "SELECT * FROM friend where user1=" + user.getId(), resultListHandler);
			if (friendList.size() > 0) {
				return friendList;
			}
			
		} finally {
			DbUtils.close(conn);
		}
		return friendList;
	}

	public static void main(String[] args) {
	}
}
