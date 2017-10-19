<%@page import="main.java.model.user.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%
	User userProfile = (User) request.getAttribute("userProfile");
	String avatar = userProfile.getAvatar() != null ? userProfile.getAvatar() : "public/img/default-avt.jpg";
	request.setAttribute("avatar", avatar);
%>
<t:layout bodyClass="top-navigation pace-done">
    <jsp:attribute name="header">
        <title>Trang cá nhân | ${userProfile.fullName}</title>
    </jsp:attribute>
    <jsp:attribute name="footer">
		<script>
		function publish(btn){
			const subject = $('#subject').val();
			const content = CKEDITOR.instances.newActicle.getData();
			if (content == ""){
				$("#cke_newActicle").notify(
				  "Không được để trống", 
				  { position:"bottom", className: "error" }
				);
			}
			if (subject == ''){
				$('#subject').notify($('#subject').attr('error-empty-attr'), { position:"top", className: "error" })
			}
			if (subject != "" && content != ""){
				var param = {
						subject,
						content
					}
					$.ajax({
				        type: 'POST',
				        data: JSON.stringify(param),
				        contentType: 'application/json',
				        url: 'article/',
				        success: function (data) {
				          if (data && data.ok){
				        	  Cookies.set('statusPublish', 'success');
				        	  location.reload();
				          } else {
				        	  Cookies.set('statusPublish', 'error');
				          }
				        }
		     		 });	
			}
				
		}
		function edit() {
			$('#newActicle').parent().css('margin-top','20px');
            CKEDITOR.replace( 'newActicle', {
				allowedContent : true,
				dialog_backgroundCoverColor: 'black',
				height : '300px',
				protectedSource : [],
				qtBorder: '0',
				startupShowBorders: false,
				toolbarGroups : [
					{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
					{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
					{ name: 'links', groups: [ 'links' ] },
					{ name: 'insert', groups: [ 'insert' ] },
					{ name: 'forms', groups: [ 'forms' ] },
					{ name: 'tools', groups: [ 'tools' ] },
					{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
					{ name: 'others', groups: [ 'others' ] },
					{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
					{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
					{ name: 'styles', groups: [ 'styles' ] },
					{ name: 'colors', groups: [ 'colors' ] },
					{ name: 'about', groups: [ 'about' ] }
				],
				removeButtons : 'Underline,Subscript,Superscript,About,SpecialChar,HorizontalRule,Maximize,Source,Scayt,Paste,PasteText,PasteFromWord,Cut,Copy,Undo,Redo,Anchor,Unlink,BulletedList,NumberedList,Blockquote,Outdent,Indent,Styles,Format,RemoveFormat',
				removePlugins : 'elementspath',
				resize_enabled : false,
				extraPlugins : 'autolink'
			} );
            
			$('.btn-new-acticle').addClass('hidden');
			$('.new-acticle-container').removeClass('hidden');
        };
        $(document).ready(function(){
        	if (Cookies.get("statusPublish") == "success"){
        		setTimeout(function() {
                    toastr.options = {
                        closeButton: true,
                        progressBar: true,
                        showMethod: 'slideDown',
                        timeOut: 4000
                    };
                    toastr.success('Đăng bài thành công', 'Thông báo');
                    Cookies.remove("statusPublish")
                }, 500);
        		
        	}
        })
		</script>
    </jsp:attribute>
    <jsp:body>
        <div class="wrapper wrapper-content">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Hồ sơ</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="">Trang chủ</a>
                        </li>
                        <li class="active">
                            <strong>Hồ sơ</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <div class="wrapper wrapper-content">
                <div class="row animated fadeInRight">
                    <div class="col-md-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Thông tin chi tiết</h5>
                            </div>
                            <div>
                                <div class="ibox-content no-padding border-left-right text-center">
                                    <img alt="image" class="img-responsive" src="${avatar}" style="margin: 0 auto;">
                                </div>
                                <div class="ibox-content profile-content">
                                    <h4><strong>${userProfile.fullName}</strong></h4>
                                    <p><i class="fa fa-map-marker"></i> ${userProfile.address}</p>
                                    <p>${userProfile.sex}</p>
                                    <h5>Giới thiệu:</h5>
                                    <p>
                                        ${userProfile.description}
                                    </p>
                                    <div class="row m-t-lg">
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-file-text-o" style="color: #1ab394;"></i>
                                            <c:choose>
	                                            <c:when test="${userProfile.getArticles().size() > 0}">
	                                            	<h5><strong>${userProfile.getArticles().size() }</strong> Bài viết</h5>	
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<h5><strong>0</strong> Bài viết</h5>	
	                                            </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-users text-center" style="color: #1ab394;"></i>
                                            <c:choose>
                                            	<c:when test="${userProfile.getFriends().size() > 0}">
	                                            	<h5><strong>${userProfile.getFriends().size() }</strong> Bạn bè</h5>	
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<h5><strong>0</strong> Bạn bè</h5>	
	                                            </c:otherwise>
                                            </c:choose>
                                            
                                            
                                        </div>
                                    </div>
                                    <!-- 
                                    <c:if test="${user.getUserName() != userProfile.getUserName()}">
					                   <div class="user-button">
	                                        <div class="row">
	                                            <div class="col-md-6">
	                                                <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> Send Message</button>
	                                            </div>
	                                            <div class="col-md-6">
	                                                <button type="button" class="btn btn-default btn-sm btn-block"><i class="fa fa-coffee"></i> Buy a coffee</button>
	                                            </div>
	                                        </div>
	                                    </div>
					                 </c:if>
                                    -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Bài viết</h5>
                                <c:if test="${user.getUserName() == userProfile.getUserName()}">
				                   <div class="text-right">
										<button class="btn btn-info btn-sm btn-new-acticle" onclick="edit()">Bài viết mới</button>
									</div>
									<div class="new-acticle-container hidden">
										<input id="subject" type="text" class="form-control m-t" placeholder="Tiêu đề" style=" margin-top: 30px; " error-empty-attr="Không được để trống">
										<div>
											<div id="newActicle"></div>
										</div>
										<div class="text-right">
											<button class="btn btn-info m-t btn-sm btn-publish" onclick="publish()">Đăng</button>
										</div>
									</div>
									
				                 </c:if>
                            </div>
                            <div class="ibox-content">
							 	<c:choose>
                                 	<c:when test="${userProfile.getArticles().size() > 0}">
                                  	<c:forEach items="${userProfile.getArticles()}" var="article" varStatus="loop">
								        <div class="forum-item">
			                                <div class="row">
			                                    <div class="col-md-9">
			                                        <div class="forum-icon">
			                                            <i class="fa fa-file-text-o"></i>
			                                        </div>
			                                        <a href="article/${article.getId() }" class="forum-item-title">${article.getSubject() }</a>
			                                        <div class="forum-sub-title article-content-ellipsis">${article.getContent() }</div>
			                                    </div>
			                                    <div class="col-md-1 forum-info">
			                                        <span class="views-number">${article.getView()}
			                                        </span>
			                                        <div>
			                                            <small>Lượt xem</small>
			                                        </div>
			                                    </div>
			                                    <div class="col-md-1 forum-info">
			                                        <span class="views-number">0
			                                        </span>
			                                        <div>
			                                            <small>Bình luận</small>
			                                        </div>
			                                    </div>
			                                    <div class="col-md-1 forum-info">
			                                        <span class="views-number">
			                                            0
			                                        </span>
			                                        <div>
			                                            <small>Thích</small>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
							      	</c:forEach>	
                                  </c:when>
                                  <c:otherwise>
                                  	<h5>Không có bài viết</h5>	
                                  </c:otherwise>
                                 </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layout>