<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Property Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet"
	href="<spring:url value='resources/css/property.css' />" />
</head>
<body>
	<%@ include file="header.jsp"%>
	<section id="contact">
		<div class="section-content">

			<h3>Sell your Car at Great Price</h3>
		</div>
		<div class="contact-section">
			<div class="container">
				<form:form modelAttribute="newProperty"
					enctype="multipart/form-data">

					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="Vehicle">CAR NAME</label>
							<form:input class="form-control" id=""
								placeholder="Enter Car Name" path="Vehicle" />
						</div>
					</div>

					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="expectedPrice">Price</label>
							<form:input class="form-control" id="expectedPrice"
								placeholder=" Enter Price you desire" path="expectedPrice" />
						</div>
					</div>

					<div class="col-md-6">
						<div class="form-group">
							<label for="description">Description</label>
							<form:textarea class="form-control" id="description"
								placeholder="Enter Your Car Description" path="Description" />
						</div>


						<div>
							<button type="button" class="btn btn-default submit">
								<i class="fa fa-paper-plane" aria-hidden="true"></i> Submit
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>

</body>
</html>