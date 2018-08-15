<!DOCTYPE html>
<html lang="en">
<jsp:include page="header.jsp"></jsp:include>
<head>
  <title>Fanthomless Realm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
#myCarousel
{
	margin-top:50px;
	margin-left:50px;
    display: block;
    max-width: 95%;
	}
  </style>
</head>
<body>
<div class="fluid-container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/scroll1.jpg" alt="cod">
    </div>

    <div class="item">
      <img src="resources/images/scroll2.png" alt="god of war">
    </div>

    <div class="item">
      <img src="resources/images/scroll3.jpg" alt="crew 2">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
</div>
  <br>
</body>

<footer class="w3-container w3-teal">
<jsp:include page="footer.jsp" ></jsp:include>
</footer></html>
