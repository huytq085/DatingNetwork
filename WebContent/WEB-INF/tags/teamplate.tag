<%@tag description="Overall Page Template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="bodyClass" required="true"%>
<%@attribute name="user" required="false" type="main.java.model.user.User"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:invoke fragment="header"/>
	<t:header></t:header>
</head>

<body class="${bodyClass}">
    <div id="body">
    	<div id="wrapper">
            <div id="page-wrapper" class="gray-bg">
            	<t:sidebar></t:sidebar>
      			<jsp:doBody/>
   			</div>
        </div>
    </div>
      <t:footer></t:footer>
      <jsp:invoke fragment="footer"/>
  </body>
</html>