<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE HTML>
<html>
<head>
<title>User Detail</title>
<style type="text/css">@import url(resources/css/main.css);</style>
</head>
<body>
	<div id="global">
	    <h1>User Detail</h1>
		
		<p>ID: ${user.id }</p>
		<p>Username: ${user.username }</p>
		
		<p>Roles:</p>
		
		<c:forEach items="${user.roles }" var="role">
			<p>${role.role }</p>
		</c:forEach>
	    
	</div>
</body>
</html>