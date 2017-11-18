
<%@ include file="header.jsp"%>

<section id="contact">
	<div class="section-content">

		<h3>Time to put in Auction</h3>
	</div>
	<div class="contact-section">

		<form:form modelAttribute="newAuction"  action="../add"  method="POST">
			<div class="container">
				<div class="row">
					<div class="col">

						<label>${newAuction.property.vehicle}</label>

						<div>
							<img class="group list-group-image"
								src="<c:url value="/resources/images/${newAuction.property.id}.png"></c:url>"
								alt="image" style="width: 50%" />
						</div>
					</div>

					<div class="col">

						<%-- <div class="form-group">
							<label for="minBidAmount">Minimum Bid Amount: </label>
							<form:input path="minBidAmount" id="minBidAmount" />
						</div> --%>


						<div class="form-group">
							<label><span>Start Date:</span></label>
							<div class='input-group date' id="startDate">
								<form:input path="startDate" cssClass="form-control" />
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-th"></span></span>
							</div>
						</div>

						<div class="form-group">
							<label><span>End Date:</span></label>
							<div class='input-group date' id="endDate">
								<form:input path="endDate" cssClass="form-control" />
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-th"></span></span>
							</div>
						</div>


						<div>
							<input type="submit" value="Submit"
								class="btn btn-default submit" />
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>

</section>

</body>
</html>