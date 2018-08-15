<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!------ Include the above in your HEAD tag ---------->


<!DOCTYPE html><html lang='en' class=''>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<style>
.orange {
	color:white;
    background-color: #e96633;
    width: 31.2vw;
}
h2{
color:red;
}
h3{
color:green;
}
.span4{
color:white;
}
.span4 img {
	margin-left : -5.5vw;
    margin-right: 5vw;
    width : 40vw;
    height :30vw;
}
.span4 .img-left {
    float: left;
}
.span4 .img-right {
    float: right;
}</style>
</head>
<body>
<div class="container">
	<div class="row">
		<h2>${thisprod.getProductName()}</h2>
	</div>
	
	<div class="block">
      <div class="row">
        <div class="span4">
          <img class="img-left" src="resources/productImages/${thisprod.getProductId()}.jpg"/>
          <div class="content-heading"><h3>Buy${thisprod.getProductId()}</h3></div>
          <p>${thisprod.getProductDescription() }</p>
          <div class="col-lg-2">
                                        
                <c:set var="prodid" scope="application" value="${thisprod.getProductId()}"/>  
                <c:set var="userName" value="${cookie.username.value}"/>
                           
              <a href="addtocart?prodid=${prodid}&&username=${userName} " class="btn orange circular"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                </div>
                        </div>
        </div>
     </div>
     <br/>
      <div class="row">
        <div class="span4">
          
          <div class="content-heading"><h3>Experience &nbsp </h3></div>
          <p>Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
          <p>Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
          <p>Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
        </div>
     </div>
    </div>
    
</div>
<script>

$(document).ready(function(){

	var quantitiy=0;
	   $('.quantity-right-plus').click(function(e){
	        
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	            
	            $('#quantity').val(quantity + 1);

	          
	            // Increment
	        
	    });

	     $('.quantity-left-minus').click(function(e){
	        // Stop acting like a button
	        e.preventDefault();
	        // Get the field name
	        var quantity = parseInt($('#quantity').val());
	        
	        // If is not undefined
	      
	            // Increment
	            if(quantity>0){
	            $('#quantity').val(quantity - 1);
	            }
	    });
	    
	});
</script>
</body>
</html>