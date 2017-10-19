<%@page import="main.java.model.article.Article"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layout bodyClass="top-navigation pace-done">
	<jsp:attribute name="header">
        <title>${article.getSubject() }</title>
    </jsp:attribute>
	<jsp:attribute name="footer">
		<script>
			
		</script>
    </jsp:attribute>
	<jsp:body>
        <div class="wrapper wrapper-content">
        	<div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Bài viết</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="">Trang chủ</a>
                        </li>
                        <li class="active">
                            <strong>Bài viết</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div
				class="wrapper wrapper-content  animated fadeInRight article">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1">
                    <div class="ibox">
                        <div class="ibox-content">
                        	<!-- 
                            <div class="pull-right">
                                <button class="btn btn-white btn-xs"
										type="button">Model</button>
                                <button class="btn btn-white btn-xs"
										type="button">Publishing</button>
                                <button class="btn btn-white btn-xs"
										type="button">Modern</button>
                            </div>
                             -->
                            <div class="text-center article-title">
                            <span class="text-muted"><i
										class="fa fa-clock-o"></i> ${article.getUpdatedAt() }</span>
                                <h1>
                                    ${article.getSubject() }
                                </h1>
                            </div>
							<div class="article-content">
								${article.getContent() }
							</div>
							<!-- 
							<hr>
							<div class="row">
							    <div class="col-md-6">
							        <h5>Tags:</h5>
							        <button class="btn btn-primary btn-xs" type="button">Model</button>
							        <button class="btn btn-white btn-xs" type="button">Publishing</button>
							    </div>
							    <div class="col-md-6">
							        <div class="small text-right">
							            <h5>Stats:</h5>
							            <div> <i class="fa fa-comments-o"> </i> 56 comments </div>
							            <i class="fa fa-eye"> </i> 144 views
							        </div>
							    </div>
							</div>
							
							<div class="row">
							    <div class="col-lg-12">
							
							        <h2>Comments:</h2>
							        <div class="social-feed-box">
							            <div class="social-avatar">
							                <a href="" class="pull-left">
							                    <img alt="image" src="img/a1.jpg">
							                </a>
							                <div class="media-body">
							                    <a href="#">
							                                                    Andrew Williams
							                                                </a>
							                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
							                </div>
							            </div>
							            <div class="social-body">
							                <p>
							                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still default model text.
							                </p>
							            </div>
							        </div>
							        <div class="social-feed-box">
							            <div class="social-avatar">
							                <a href="" class="pull-left">
							                    <img alt="image" src="img/a2.jpg">
							                </a>
							                <div class="media-body">
							                    <a href="#">
							                                                    Michael Novek
							                                                </a>
							                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
							                </div>
							            </div>
							            <div class="social-body">
							                <p>
							                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Packages and web page editors now use Lorem Ipsum as their default model text.
							                </p>
							            </div>
							        </div>
							        <div class="social-feed-box">
							            <div class="social-avatar">
							                <a href="" class="pull-left">
							                    <img alt="image" src="img/a3.jpg">
							                </a>
							                <div class="media-body">
							                    <a href="#">
							                                                    Alice Mediater
							                                                </a>
							                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
							                </div>
							            </div>
							            <div class="social-body">
							                <p>
							                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Packages and web page editors now use Lorem Ipsum as their default model text.
							                </p>
							            </div>
							        </div>
							        <div class="social-feed-box">
							            <div class="social-avatar">
							                <a href="" class="pull-left">
							                    <img alt="image" src="img/a5.jpg">
							                </a>
							                <div class="media-body">
							                    <a href="#">
							                                                    Monica Flex
							                                                </a>
							                    <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
							                </div>
							            </div>
							            <div class="social-body">
							                <p>
							                    Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Packages and web page editors now use Lorem Ipsum as their default model text.
							                </p>
							            </div>
							        </div>
							
							
							    </div>
							</div>
                        
                         	-->
                        </div>
                    </div>
                </div>
            </div>


        </div>
        </div>
    </jsp:body>
</t:layout>