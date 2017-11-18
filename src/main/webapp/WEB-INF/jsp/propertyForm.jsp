
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
							<label for="vehicle">CAR NAME</label>
							<form:input class="form-control" id="vehicle"
								placeholder="Enter Car Name" path="vehicle" />
						</div>
					</div>

					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="expectedPrice">Expected Price</label>
							<form:input class="form-control" id="expectedPrice"
								placeholder=" Enter Price you desire" path="expectedPrice" />
						</div>
					</div>
					
					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="cylinders">Cylinders</label>
							<form:input class="form-control" id="cylinders"
								placeholder=" Enter Cylinders Cycle" path="cylinders" />
						</div>
					</div>
					
						<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="model">Model</label>
							<form:input class="form-control" id="model"
								placeholder=" Enter Car Model" path="model" />
						</div>
					</div>
					
					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="odometer">Odometer</label>
							<form:input class="form-control" id="odometer"
								placeholder="Enter odometer " path="odometer" />
						</div>
					</div>
					
					<div class="col-md-6 form-line">
						<div class="form-group">
							<label for="Image">Upload Image</label>	
								<form:input id="image" path="image"  type="file" />
						</div>
					</div>
					

					<div class="col-md-6">
						<div class="form-group">
							<label for="description">Description</label>
							<form:textarea class="form-control" id="description"
								placeholder="Enter Your Car Description" path="description" />
						</div>


						<div>
							
							<input type="submit" value="Submit" class="btn btn-default submit"/>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>

</body>
</html>