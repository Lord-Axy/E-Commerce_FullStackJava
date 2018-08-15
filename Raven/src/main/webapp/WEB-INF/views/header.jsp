 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Fanthomless Realm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!------ Include the above in your HEAD tag ---------->
   <style>
  body{
  background-color:#233247;
  } 
  .input-group-addon{
  background-color:#40060C; 
  font-family:Aclonica; 
  font-size: x-large;
  color:white;
  font-size:30px;
  }
  .btn-info {
    color: #675F02;
    background-color: #5bc0de;
	font-family:Aclonica; 
  font-size: 20px;
    /* border-color: #46b8da; */
}
#inputlg{
color:#000;
background-color: #fcf8e3;
} /* black when not with focus */
#inputlg:focus{color:#de2a00;}
#custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
</style>
</head>
<body>
<c:set var="userName" value="${cookie.username.value}"/>
<div class="container-fluid">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-3">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
          </button>
			<a class="navbar-brand" href="index">Fanthomless Realm</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse-3">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Realm</a></li>
				<li><a href="allprod"> Product</a></li>
				<li><a href="#">Page 2</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li style="margin-right:20px"><a href="#"><span class="glyphicon glyphicon-log-in"></span> 
				 -->
				 <c:if test="${userName==null}">
				 <li class="active" style='margin-right:20px'><a href='login'><span class='glyphicon glyphicon-log-in'> Login</span></a>
				 </c:if>
				 <c:if test="${userName!=null}">
				 
				 <li class="dropdown" class="active" style='margin-right:20px' data-toggle="dropdown"><a href="#"><span class='glyphicon glyphicon-user'> ${userName}</span> <b class="caret"></b></a></li>
				<ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-cog"></i> Preferences</a></li>
                            <li><a href="#"><i class="icon-envelope"></i> Contact Support</a></li>
                            <li class="divider"></li>
                            <li><a href="logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                        </ul>
				</c:if>
				
			</ul>
		</div>
	</nav>
	<div class="container" style="margin-top:80px;">
		<div class="row" style="">
			<div class="col-md-6">
				<div id="custom-search-input">
					<div class="input-group col-md-12">
						<input type="text" class="form-control input-lg" placeholder="Explore...." />
						<span class="input-group-btn">
							<button class="btn btn-info btn-lg" type="button">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>