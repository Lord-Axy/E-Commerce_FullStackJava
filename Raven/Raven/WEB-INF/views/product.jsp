<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Fanthomless Realm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
  background:radial-gradient(#03A9F4);
  background-size:4px 4px;
  perspective: 400px;
  width: 100%;
  height: 600px;
}
.dropholder{
  width: 322px;
  height: 60px;
  margin:100px auto;
  padding:0 0 0 20px;
  border-radius:10px;
  font:18px arial;
  color: #fff;
  position: relative;
  box-sizing:border-box;
  border:1px solid #9b0db9;
  animation: move 3s ease-in-out infinite;
  position: relative;
}
.dropholder:hover, .dropholder:hover:after{
  animation-play-state:paused;
}
.dropholder:after{
  content:"";
  position: absolute;
  width: 250px;
  height: 5px;
  background:rgba(0,0,0, 0);
  display: block;
  top:100px;
  left:37px;
  margin: auto;
  border-radius:50%;
  box-shadow:0 15px 10px rgba(0,0,0, 0.4);
  animation: moveShadow 3s ease-in-out infinite;
}
p{
  float: left;
  line-height:60px;
}
.dropdown > p{
  font-size:16px;
}
.dropdown, .dropholder{
  background:linear-gradient(#03A9F4,#03A9F4);
}
.dropdown{
  margin-left:20px;
  float: left;
  width: 208px;
  padding:0 0 0 20px;
  border-radius:0 10px 10px 0;
  cursor: pointer;
  height:58px;
  border-left:1px solid #da4df8;
  position: relative;
}
.dropdown:hover{
  background:linear-gradient(#03A9F4);
}
.dropdown:after{
  content:"▾";
  font-size: 18px;
  position: absolute;
  right:20px;
  top:18px;
  display: block;
}

.menu{
  position: absolute;
  right:0;
  top:70px;
  width: 228px;
  cursor: pointer;
  opacity:0;
  transform-style: preserve-3d;
  transform:rotatey(180deg) rotateX(5deg) translatey(100px);
  backface-visibility: hidden;
  background:linear-gradient(#4dc2f8 ,#0d82b9);
  border:2px solid #0d82b9;
  border-radius:10px;
  transition:all 0.8s;
  z-index:5;
  overflow:hidden;
}
.menu li{
  padding: 10px 10px;
  border-bottom:1px dotted #fff;
  color:#e8f8ff; 
  transition:all 0.3s;
}
.menu li:hover{
  background:#61ccfd;
  padding-left:20px;
}
.menu li:last-child{
  border:none;
}

.showMenu{
   opacity:1;
  transform:rotateX(0deg) translatey(0px);
}
li > i{
  float: left;
  padding-top: 3px;
  padding-right: 8px;
}
p > i{
 position: relative;
 top:2px;
}
i{
  opacity: 0.7;
}
@keyframes move{
  0%, 100%{transform:translateY(-10px);}
  50%{transform:translateY(0);}
}

@keyframes moveShadow{
  0%,100%{transform:translateY(10px);opacity:0.4;}
  50%{transform:translateY(0);opacity:1;}
}
.md-input {
    position: relative;
    margin-bottom: 30px;
}
    .md-input .md-form-control {
        font-size: 16px;
        padding: 10px 10px 10px 5px;
        display: block;
        border: none;
        border-bottom: 2px solid #CACACA;
        box-shadow: none;
        width: 450px;
    }

    .md-input label {
        color: rgba(0, 0, 0, 0.5);
        font-size: 16px;
        font-weight: normal;
        position: absolute;
        pointer-events: none;
        left: 5px;
        top: 10px;
        transition: 0.2s ease all;
        -moz-transition: 0.2s ease all;
        -webkit-transition: 0.2s ease all;
    }

    .md-input .bar:before {
        width:450px;
    }

    .md-input .bar:after {
        width:450px;
    }

    .md-input .highlight {
        position: absolute;
        height: 60%;
        width: 100px;
        top: 25%;
        left: 0;
        pointer-events: none;
        opacity: 0.5;
    }
    .md-input .md-form-control:focus ~ label, .md-input .md-form-control:valid ~ label {
    top: -15px;
    font-size: 14px;
    color: #183D5D;
}
.md-input .bar:before, .md-input .bar:after {
    content: '';
    height: 2px;
    width: 0;
    bottom: 0px;
    position: absolute;
    background: #03A9F4;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

.md-input .md-form-control:focus ~ .bar:before, .md-input .md-form-control:focus ~ .bar:after {
    width: 50%;
}
//table
.filterable {
    margin-top: 15px;
}
.filterable .panel-heading .pull-right {
    margin-top: -20px;
}
.filterable .filters input[disabled] {
    background-color: transparent;
    border: none;
    cursor: auto;
    box-shadow: none;
    padding: 0;
    height: auto;
}
.filterable .filters input[disabled]::-webkit-input-placeholder {
    color: #333;
}
.filterable .filters input[disabled]::-moz-placeholder {
    color: #333;
}
.filterable .filters input[disabled]:-ms-input-placeholder {
    color: #333;
}

}
    	.row{
		    margin-top:40px;
		    padding: 0 10px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}
		#tit {
    position: relative;
}

    #tit #txt {
        position: relative;
        width: 200px; 
        background-color: #fff; 
        margin: 0 auto; 
        text-align: center; 
        z-index: 2; 
    }

    #tit:before {
        position: absolute;
        top: 58%;
        content: "";
        display: block;
        width: 100%;
        border-bottom: 1px solid #ccc;
        z-index: 1; 
    }


  </style>
  </head>
  <body>
  <div class="container">
	<div class="row">
		<div class="col-md-3">
    	 <div class="pad15"><br>
		 <form:form modelAttribute="productAgent" action="productRegister" enctype="multipart/form-data">
		 <c:if test="${!check}">
		 <label for="name">Id</label>
		  <div class="md-input">
		  
                                    <form:input path="productId" readonly="true" class="md-form-control" required="required" type="text"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                   <!--  <label>ProductId</label> -->
                                </div>
                                
           </c:if>
                                <div class="md-input">
                                    <form:input path="productName" class="md-form-control" type="text"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Product Name</label>
                                </div>
                                <div class="md-input">
                                    <form:input path="productDescription" class="md-form-control" required="required" type="text"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Description</label>
                                </div>
								 <div class="md-input">
                                    <form:input path="productQuantity" class="md-form-control" required="required" type="text"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Quantity</label>
                                </div>
								 <div class="md-input">
                                    <form:input path="productPrice" class="md-form-control" required="required" type="text"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Price</label>
                                </div>
                                
								<label for="sel1">Supplier:</label>
      <form:select path="productSupplierName" class="form-control" id="sel1">
        
        <c:forEach var="s" items="${suplist}">
        <%-- <c:set var="suppliername" value="${s.getSupplierName()}"> --%>
        <form:option value="${s.getSupplierName()}"/>
        </c:forEach>
        
      </form:select>
      
      
	  <label for="sel1">Category:</label>
      <form:select path="productCategoryName" class="form-control" id="sel1">
        <c:forEach var="c" items="${catlist}">
        <%-- <c:set var="suppliername" value="${c.getCategoryName()}"> --%>
        <form:option value="${c.getCategoryName()}"/>
        </c:forEach>
      </form:select>
                     <div class="md-input">
                                    <form:input path="productImage" class="md-form-control" type="file"/>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Image</label>
                                </div>                
								
<c:if test="${check}">
  <form:button type="submit" value="Add" name="add product" >ADD</form:button>
  </c:if>
  <c:if test="${!check}">
  <form:button type="submit" value="Edit" name="update product" >UPDATE</form:button>
  </c:if>
  </form:form>

  <div class="container">
               
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Categories</h3>
						<div class="pull-right">
							
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Categories" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Category</th>
								<th>Supplier</th>
								<th>price</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="p" items="${prodlist}">
							<tr>
								<td>${p.getProductId() }</td>
								<td>${p.getProductName() }</td>
								<td>${p.getProductCategoryName()}</td>
								<td>${p.getProductSupplierName()}</td>
								<td>${p.getProductPrice()}</td>
								
								 <td class="text-center"><a class='btn btn-info btn-xs' href="editproduct?getprodid=${p.getProductId()}"><span class="glyphicon glyphicon-edit"></span> Edit</a> <a href="deleteproduct?getprodid=${p.getProductId()}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
							</tr>
						</c:forEach>	
							
							
						</tbody>
					</table>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
  </body>
  </html>