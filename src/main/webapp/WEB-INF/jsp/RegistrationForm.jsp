<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%-- <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 --%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>UserRegistration</title>
<style type="text/css">@import url("<c:url value="/resource/css/property.css"/>");</style>
<style>
form {
  font:100% verdana;
  min-width: 500px;
  max-width: 1100px;
  width: 1100px;
}
label {float: left;
	width: 11em;
	margin-left: 15px;
	font-weight:bold;
	}
legend{
color:red;


}
.inputcss{
width: 55%;
}

#password,#verifyPassword{
 padding: 5px;
    border-radius: 5px;
    width: 20%;

}	
</style>

</head>
<body>
<%@ include file="header.jsp" %>
<h1>New User</h1>
	<spring:url var= "addUser" value="/addUser" />
	
    <form:form  modelAttribute="newUser" action="${addUser}" method="POST">
        <fieldset class="forFieldSet">
        <legend>Sign up form</legend><br></br>

				<form:errors path="*" element="div" cssStyle="color : red;"/>
        
		<div>
		
				<div>
						<form:input id="userId" path="userId" type="hidden"/>
						<form:errors path="userId" cssStyle="color : red;"/>
					</div>
          
       <div>
       <label for="firstName"><strong>First Name :</strong></label>
						<form:input id="firstName" path="firstName" type="text" class="inputcss"/>
						<form:errors path="firstName" cssStyle="color : red;"/><br></br>
					</div>
		<div>
		<label>Last Name :</label>
						<form:input id="lastName" path="lastName" type="text" class="inputcss"/><br></br>
						<form:errors path="lastName" cssStyle="color : red;"/>
					</div>			
        
        <div>
		<label>Email :</label>
						<form:input id="email" path="email" type="text" class="inputcss"/><br></br>
						<form:errors path="email" cssStyle="color : red;"/>
					</div>	
        
     
					
			<div>
			<label>Phone :</label>
					<form:input id="phone.area" path="phone.area" type="text"/> 
					<form:errors path="phone.area" cssStyle="color:red;"></form:errors> 
					<form:input id="phone.prefix" path="phone.prefix" type="text"/>
					<form:errors path="phone.prefix" cssStyle="color:red;"></form:errors>
					<form:input id="phone.number" path="phone.number" type="text"/>
					<form:errors path="phone.number" cssStyle="colory:red;"></form:errors>
					
			<br></br>
			</div>	

			<div>
			<label>User name:</label>
			
				<form:input id="userCredential.username" path="userCredential.username" type="text" />
				<form:errors path="userCredential.username" cssStyle="color:red;"></form:errors><br></br>
			<label>Password:</label>	
				<form:password id="password" path="userCredential.password" />
				<form:errors path="userCredential.password" cssStyle="color:red"></form:errors><br></br>
			<label>Verify password:</label>	
				<form:password id="verifyPassword" path="userCredential.verifyPassword"/>
				<form:errors path="userCredential.verifyPassword" cssStyle="color:red"></form:errors><br></br>
			
			
			<label>Role</label>
				<form:input path="userCredential.authority[0].authority" type="text" value="ROLE_USER" />
				<form:errors path="userCredential.authority[0].authority" cssStyle="color:red;"></form:errors>
				
			
			
			<form:hidden path="userCredential.enable" value="TRUE"  />
			
			
			
			
			
			
			</div>
	
				<%-- <div>
					<label for="password">Password :</label>
					
						
							<form:password id="password" path="password"  class="inputcss"/><br></br>
							<form:errors path="password" cssStyle="color : red;"/>
						
				</div>

	
				<div>
					<label for="verifyPassword">Verify Password :</label>
					
							<form:password  path="verifyPassword"  class="inputcss"/><br></br>
							<form:errors path="verifyPassword" cssStyle="color : red;"/>
					
				</div>
         
         			<form:hidden path="enable" value="TRUE"  />
         
        <form:input  path="role" type="text" value="ROLE_USER" class="inputcss"/><br></br>
							<form:errors path="role" cssStyle="color : red;"/>
     --%>
    
    <p id="buttons">
    		<button type=button onclick=window.location.href="<spring:url value="/" />">Back</button>
            <input id="reset" type="reset" tabindex="4">
            <input id="submit" type="submit" tabindex="5" 
                value="Sign up">
        </p>
          
</fieldset>
</form:form>
<%@ include file="footer.jsp" %>
</body>
</html>