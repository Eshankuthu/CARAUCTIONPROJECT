
	<%@ include file="header.jsp"%>
	
			
		<%-- <c:forEach items="${properties}" var="property">
		<div> ${property.expectedPrice}</div>
		
		<div>
		<img src="<c:url value="/resources/images/${property.id}.png"></c:url>" alt="image"  style = "width:100%"/>
		
		<c:set var="imgPath" value="resources/images/${property.id}.png"/>
								<img src="<spring:url value= "${imgPath}" />"
									alt="hello" style="width: 25%" />
		</div>
		
		</c:forEach> --%>
		
		<div class="container">
   
    <div id="products" class="row list-group">
    <c:forEach items="${properties}" var="property">
        <div class="item  col-xs-4 col-lg-4">
            <div class="thumbnail">
 
                
                <img  class="group list-group-image" src="<c:url value="/resources/images/${property.id}.png"></c:url>" alt="image"  style = "width:100%"/>
		
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">
                        ${property.vehicle}</h4>
                    <p class="group inner list-group-item-text">
                        ${property.description}</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            Current Price $<p class="lead">
                                 ${property.expectedPrice}</p>
                        </div>
                        <div class="col-xs-12 col-md-6">
                        <a  class="btn btn-success"  href="<c:url value='/auction/add/${property.id}' />" >
                         Put in Auction</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       </c:forEach>
         </div>
</div>

</body>
</html>