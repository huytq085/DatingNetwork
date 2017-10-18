<%@page import="main.java.model.user.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout bodyClass="top-navigation pace-done">
    <jsp:attribute name="header">
        <title>Sửa thông thông tài khoản </title>
    </jsp:attribute>
    <jsp:attribute name="footer">
		<script>
			
            $(document).ready(function () {
            	if (getCookie('statusUpdate') == 'success'){
    	    		setTimeout(function() {
    	                toastr.options = {
    	                    closeButton: true,
    	                    progressBar: true,
    	                    showMethod: 'slideDown',
    	                    timeOut: 4000
    	                };
    	                toastr.success('Cập nhật thông tin thành công', 'Thông báo');
    	                removeCookie('statusUpdate')
    	            }, 1300);
    	    	} else if (getCookie('statusUpdate') == 'error'){
            		$('input[name="email"]').closest('.form-group').addClass('has-error')
            		removeCookie('statusUpdate')
            	}
                $('select[name="sex"]').val('${user.sex}')
                $('select[name="matrimony"]').val('${user.matrimony}')
            })
			
		</script>
    </jsp:attribute>
    <jsp:body>
        <div class="wrapper wrapper-content">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>Profile</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="abc">Home</a>
                        </li>
                        <li>
                            <a>Extra Pages</a>
                        </li>
                        <li class="active">
                            <strong>Profile</strong>
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
                                <h5>Profile Detail</h5>
                            </div>
                            <div>
                                <div class="ibox-content no-padding border-left-right text-center">
                                    <img alt="image" class="img-responsive" src="${user.avatar}" style="margin: 0 auto;">
                                </div>
                                <div class="ibox-content profile-content">
                                    <h4><strong>${user.fullName}</strong></h4>
                                    <p><i class="fa fa-map-marker"></i> ${user.address}</p>
                                    <p>${user.sex}</p>
                                    <h5>About me</h5>
                                    <p>
                                        ${user.description}
                                    </p>
                                    <div class="row m-t-lg">
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-file-text-o" style="color: #1ab394;"></i>
                                            <h5><strong>169</strong> Posts</h5>
                                        </div>
                                        <div class="col-md-6 text-center">
                                            <i class="fa fa-users text-center" style="color: #1ab394;"></i>
                                            <c:choose>
                                            	<c:when test="${user.getFriends().size() > 0}">
	                                            	<h5><strong>${user.getFriends().size() }</strong> Friends</h5>	
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<h5><strong>0</strong> Friends</h5>	
	                                            </c:otherwise>
                                            </c:choose>
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Horizontal form</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
						    <form class="form-horizontal" action="account/update" method="POST">
						        <div class="form-group">
						            <div class="col-md-12">
						                <div class="form-group">
						                    <label for="email" class="col-md-3 control-label">Email</label>
						                    <div class="col-md-9">
						                        <input type="email" class="form-control" name="email" required="" value="${user.email }">
						                    </div>
						                </div>
						                <div class="form-group">
						                    <label for="fullName" class="col-md-3 control-label">Tên</label>
						                    <div class="col-md-9">
						                        <input type="text" class="form-control" name="fullName" value="${user.fullName }" required="">
						                    </div>
						                </div>
						                <div class="form-group">
						                    <label for="address" class="col-md-3 control-label">Địa chỉ</label>
						                    <div class="col-md-9">
						                        <input type="text" class="form-control" name="address" value="${user.address }" required="">
						                    </div>
						                </div>
						                <div class="form-group">
						                    <label for="sex" class="col-md-3 control-label">Giới tính</label>
						
						                    <div class="col-md-9">
						                        <select class="form-control m-b" name="sex">
						                            <option value="Male">Nam</option>
						                            <option value="Female">Nữ</option>
						                            <option value="Gay">Gay</option>
						                            <option value="Les">Les</option>
						                        </select>
						                    </div>
						                </div>
						                <div class="form-group">
						                    <label for="city" class="col-md-3 control-label">Tình trạng</label>
						                    <div class="col-md-9">
						                        <select class="form-control m-b" name="matrimony">
						                            <option value="1">Độc thân</option>
						                            <option value="2">Đang có người yêu</option>
						                            <option value="3">Đã có gia đình</option>
						                            <option value="4">Ly dị</option>
						                            <option value="5">Ở góa</option>
						                        </select>
						                    </div>
						                </div>
						
						                <div class="form-group">
						                    <label for="description" class="col-md-3 control-label">Giới thiệu</label>
						                    <div class="col-md-9">
						                        <textarea class="form-control" cols="25" name="description" placeholder="Bạn là người như thế nào?" rows="8">${user.description }</textarea>
						                    </div>
						                </div>
						                <button type="submit" class="btn btn-primary m-b pull-right">Update</button>
						            </div>
						        </div>
						    </form>
						</div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:layout>