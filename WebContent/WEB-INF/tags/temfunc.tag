<%@tag description="Overall Page Template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="bodyClass" required="true"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:invoke fragment="header"/>
	<t:header></t:header>
</head>

<body class="${bodyClass}">
    <div id="body">
    	<div id="wrapper">
     		<jsp:doBody/>
        </div>
    </div>
      <t:footer></t:footer>
      <jsp:invoke fragment="footer"/>
  </body>
</html>