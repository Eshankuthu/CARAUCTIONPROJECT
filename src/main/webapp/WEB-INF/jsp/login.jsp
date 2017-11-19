<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
@page errorPage="loginerror.jsp"
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login to Car Auction</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<form action="${flowExecutionUrl}" method="post">
	
		<input type="hidden" name="_eventId" value="performLogin"> 
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
 
		<p>Login: </p>
		<p> Name : <input type="text" id="name" name="name" /></p>
		<p> Password : <input type="password" id="password" name="password" /></p>
		<p> <input type="submit" value="Submit" /> </p>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html> --%>

<%@ include file="header.jsp"%>

<form class="form-horizontal">
<fieldset>

<div class="form-group">
  <label class="col-md-4 control-label" for="">Username</label>  
  <div class="col-md-4">
  <input id="" name="" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Password</label>
  <div class="col-md-4">
    <input id="" name="" type="password" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->


<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-8">
    <button id="" name="" class="btn btn-default">Cancel</button>
    <button id="" name="" class="btn btn-warning">Login</button>
    <button class="btn btn-warning" type=button onclick=window.location.href="<spring:url value="/addUser" />">Register</button>
  
  </div>
</div>

</fieldset>
</form>


<%@ include file="footer.jsp"%>
