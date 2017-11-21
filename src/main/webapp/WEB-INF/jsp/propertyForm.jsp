<%@ include file="usermenu.jsp"%>


<h3 align="center">Sell your Car at Great Price</h3>

<div class="container">
	<form:form modelAttribute="newProperty" enctype="multipart/form-data">
		<p>
			<form:errors path="*" cssStyle="color : red;" />
		</p>
		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="vehicle">CAR NAME<spring:message code="vehicle.name"/></label>
				<form:input class="form-control" id="vehicle"
					placeholder="Enter Car Name" path="vehicle" />
				<div>
					<form:errors path="vehicle" cssStyle="color : red;" />
				</div>
			</div>
		</div>

		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="expectedPrice">Expected Price</label>
				<form:input class="form-control" id="expectedPrice"
					placeholder=" Enter Price you desire" path="expectedPrice" />
				<div>
					<form:errors path="expectedPrice" cssStyle="color : red;" />
				</div>
			</div>
		</div>

		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="cylinders">Cylinders</label>
				<form:input class="form-control" id="cylinders"
					placeholder=" Enter Cylinders Cycle" path="cylinders" />
				<div>
					<form:errors path="cylinders" cssStyle="color : red;" />
				</div>
			</div>
		</div>

		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="model">Model</label>
				<form:input class="form-control" id="model"
					placeholder=" Enter Car Model" path="model" />
				<div>
					<form:errors path="model" cssStyle="color : red;" />
				</div>
			</div>
		</div>

		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="odometer">Odometer</label>
				<form:input class="form-control" id="odometer"
					placeholder="Enter odometer " path="odometer" />
				<div>
					<form:errors path="odometer" cssStyle="color : red;" />
				</div>

			</div>
		</div>

		<div class="col-md-6 form-line">
			<div class="form-group">
				<label for="Image">Upload Image</label>
				<form:input id="image" path="image" type="file" />
			</div>
		</div>


		<div class="col-md-6">
			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea class="form-control" id="description"
					placeholder="Enter Your Car Description" path="description" />
				<div>
					<form:errors path="description" cssStyle="color : red;" />
				</div>

			</div>


			<div>

				<input type="submit" value="Submit" class="btn btn-success"/>
			</div>
		</div>	
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form:form>
</div>


</body>
</html>