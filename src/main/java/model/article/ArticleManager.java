package main.java.model.article;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import main.java.common.DbManagement;
import main.java.model.user.User;

public class ArticleManager {
	private static ArticleManager articleManager;

	public ArticleManager() {
	};

	public static ArticleManager getInstance() {
		if (articleManager == null) {
			articleManager = new ArticleManager();
		}
		return articleManager;
	}
	
	public List<Article> findArticles(User user) throws SQLException {
		List<Article> listArticle = new ArrayList<Article>();
		String stm = "SELECT * FROM article where userid=" + user.getId(); 
		System.out.println(stm);
		listArticle = DbManagement.getInstance().findAll(stm, Article.class);
		System.out.println(listArticle.size());
		if (listArticle.size() > 0) {
			System.out.println(">0");
			System.out.println(listArticle.get(0).getContent());
			return listArticle;
		}
		return listArticle;
		
	}

}
