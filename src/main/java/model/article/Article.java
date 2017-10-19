package main.java.model.article;

import java.util.Date;
import java.util.List;

import main.java.model.comment.Comment;

public class Article {
	private String subject;
	private int userid;
	private String content;
	private List<String> tags;
	private List<String> categories;
	private long updateAt;
	private int view;
	private List<Comment> comments;
	private Date dateAdded;
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<String> getTags() {
		return tags;
	}
	public void setTags(List<String> tags) {
		this.tags = tags;
	}
	public List<String> getCategories() {
		return categories;
	}
	public void setCategories(List<String> categories) {
		this.categories = categories;
	}
	public long getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(long updateAt) {
		this.updateAt = updateAt;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	public Date getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
}
