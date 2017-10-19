package main.java.model.article;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public Article findByPk(int articleId){
		String stm = "SELECT * FROM article WHERE id=\"" + articleId + "\"";
		Article article = DbManagement.getInstance().executeQuery(stm, Article.class);
		return article;
	}
	
	public List<Article> findArticles(User user) throws SQLException {
		List<Article> listArticle = new ArrayList<Article>();
		String stm = "SELECT * FROM article where userid=" + user.getId() + " ORDER BY dateAdded DESC"; 
		listArticle = DbManagement.getInstance().findAll(stm, Article.class);
		if (listArticle.size() > 0) {
			return listArticle;
		}
		return listArticle;
	}
	
	public int update(Article article) throws SQLException{
		int result = 0;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userid", article.getUserid());
		params.put("subject", article.getSubject());
		params.put("content",article.getContent());
		params.put("view", article.getView());
		params.put("dateAdded", new Date());
		params.put("updatedAt", new Date());
		try {
			Article row = findByPk(article.getId());
			if (row == null){
				result = DbManagement.getInstance().insert("article", params);
			} else {
				result = DbManagement.getInstance().update("user", params, "id=\"" + article.getId() + "\"");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
			
	}

}
