<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>

<style>
img{max-width:100%;}
	*{transition: all .5s ease;-moz-transition: all .5s ease;-webkit-transition: all .5s ease}
.my-list {
    width: 100%;
    padding: 10px;
    border: 1px solid #f5efef;
    float: left;
    margin: 15px 0;
    border-radius: 5px;
    box-shadow: 2px 3px 0px #e4d8d8;
    position:relative;
    overflow:hidden;
}
.my-list h3{
    text-align: left;
    font-size: 14px;
    font-weight: 500;
    line-height: 21px;
    margin: 0px;
    padding: 0px;
    border-bottom: 1px solid #ccc4c4;
    margin-bottom: 5px;
    padding-bottom: 5px;
    }
	.my-list span{float:left;font-weight: bold;}
	.my-list span:last-child{float:right;}
	.my-list .offer{
    width: 100%;
    float: left;
    margin: 5px 0;
    border-top: 1px solid #ccc4c4;
    margin-top: 5px;
    padding-top: 5px;
    color: #afadad;
    }
	.detail {
    position: absolute;
    top: -107%;
    left: 0;
    text-align: center;
    background: #fff;height: 100%;width:100%;
	
}
	
.my-list:hover .detail{top:0;}
img{
	width:30vw;
	height:35vh;
}
.pro{
	color:white;
}
</style>
</head>
<body>


<c:forEach var="p" items="${prodlist}">
	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="my-list pro">
			<img src="resources/productImages/${p.getProductId()}.jpg" alt="dsadas" />
			<h3>${p.getProductName() }</h3>
			<span>${p.getProductPrice()} &#8377;</span>
			<span class="pull-right">ID: ${p.getProductId() }</span>
			<div class="offer">Extra 5% Off.</div>
			<div class="detail">
			<p>Book in ${p.getProductPrice()} &#8377;</p>
			<img src="resources/productImages/${p.getProductId()}.jpg" alt="dsadas" />
			<a href="" class="btn btn-info">Book Now</a>
			<a href="proddetail?getprodid=${p.getProductId()}" class="btn btn-info">Details</a>
			</div>
			</div>
	</div>
	
</c:forEach>
</body>
</html>