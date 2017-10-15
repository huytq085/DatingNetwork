<%@page import="main.java.model.user.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:template bodyClass="top-navigation pace-done" user="${user}">
    <jsp:attribute name="header">
        <title>Homepage</title>
    </jsp:attribute>
    <jsp:attribute name="footer">
        
    </jsp:attribute>
    <jsp:body>
        <c:if test="${statusSignup == 'success'}">
            <div class="alert alert-success">
                <strong>Success!</strong> Indicates a successful or positive action.
            </div>
        </c:if>
        <div class="wrapper wrapper-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>New profiles </h5>
                            </div>
                            <div class="ibox-content">
                                <div class="row" id="row-hot-profile">
                                      <c:forEach items="${listProfile}" var="user">
								        <div class="col-lg-4">
									    <div class="contact-box">
									        <a href="user/${user.userName }">
									            <div class="col-sm-4">
									                <div class="text-center"><img alt="image" class="img-circle m-t-xs img-responsive" src="${user.avatar }">
									                    <div class="m-t-xs font-bold">${user.job }</div>
									                </div>
									            </div>
									            <div class="col-sm-8">
									                <h3><strong>${user.fullName }</strong></h3>
									                <p><i class="fa fa-map-marker"></i>${user.address }</p>
									                <p>Phone: ${user.phone }</p>
									            </div>
									            <div class="clearfix"></div>
									        </a>
									    </div>
									</div>
								      </c:forEach>
                                	
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </jsp:body>
</t:template>