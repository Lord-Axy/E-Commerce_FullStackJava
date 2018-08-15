<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Fanthomless Realm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  * {
  box-sizing: border-box;
}

html {
  font: 14px/1.4 Sans-Serif;
}

form {
  width: 320px;
  float: left;
  margin: 20px;
}
form > div {
  position: relative;
  overflow: hidden;
}
form input, form textarea {
  width: 100%;
  border: 2px solid gray;
  background: none;
  position: relative;
  top: 0;
  left: 0;
  z-index: 1;
  padding: 8px 12px;
  outline: 0;
}
form input:valid, form textarea:valid {
  background: white;
}
form input:focus, form textarea:focus {
  border-color: #f06d06;
}
form input:focus + label, form textarea:focus + label {
  background: #f06d06;
  color: white;
  font-size: 125%;
  padding: 1px 6px;
  padding-bottom:300%;
  z-index: 2;
  text-transform: uppercase;
  margin-bottom:-100%;
}
form label {
  transition: background 0.2s, color 0.2s, top 0.2s, bottom 0.2s, right 0.2s, left 0.2s;
  position: absolute;
  color: #999;
  padding: 7px 6px;
  font-size:20px;
}
form textarea {
  display: block;
  resize: vertical;
}

form.go-bottom input, form.go-bottom textarea {
  padding: 12px 12px 12px 12px;
}
form.go-bottom label {
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
}
form.go-bottom input:focus, form.go-bottom textarea:focus {
  padding: 4px 6px 20px 6px;
}
form.go-bottom input:focus + label, form.go-bottom textarea:focus + label {
  top: 100%;
  margin-top: -25px;
}
.row{
padding-bottom: 4px;
}
#btn{
font-size:25px;
}
/////////////////////////////////////////////////
.quickform {  padding:30px 25px;
   -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,1), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(1,0,0,0), 0 0 8px rgba(102, 175, 233, 0.6);
  background: rgba(0, 0, 0, 0.4);
  }
.quickform h2 { text-transform:uppercase; color:#FFF; margin:15px 0px; }

.quickform input { width:100%; height:auto; float:left; border:1px solid #fff; padding:12px 5px; color:#ccffff; background:none; margin:0px 0px 20px 0px;}
.quickform textarea { width:100%; height:auto; min-height:230px; float:left; border:1px solid #fff; padding:8px 5px; color:#999; background:none; margin:0px 0px 20px 0px; resize:none;}

.quickform button { background:#CCC; color:#333; padding:8px 15px;  border:1px solid #fff; background:none; font-size:12px; text-transform:uppercase; color:#fff;}
.quickform button:hover { background:#fff; color:#333;}

.quickform input[type="text"]:focus {
opacity: 0.6;
    filter: alpha(opacity=60);
  border-color: #66afe9;
  outline: 0;
   -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
} 

.quickform textarea[type="text"]:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
} 
.container{
-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}

.quickform textarea:focus {
        border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
body{


  
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
.container{
margin-top:14px;
padding-top:4px;
}
label{
font-size:17px;
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
  <body bgcolor="black">
  <div class="container">
  <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 col-offset-4 quickform">
 <form:form class="go-bottom"  modelAttribute="supplierAgent" action="supplierRegister">
  <h2>Supplier</h2>
  <c:if test="${!check}">
  <div class="row">
    <form:input id="name" name="name" type="text" path="supplierId" readonly="true" required="required"/>
    <label for="name">Id</label>
	
  </div>
  </c:if>
  <div class="row">
    <form:input id="name" name="name" type="text" path="supplierName" required="required"/>
    <label for="name">Name</label>
	
  </div>
  <br>
  <div class="row">
    <form:input id="phone" name="phone" type="tel" path="supplierContactNo" required="required"/>
    <label for="phone">Primary Phone</label>
  </div>
  <br>
  <div class="row">
    <form:input type="textarea" id="message" name="address" path="supplierAddress" required="required"/>
    <label for="message">Address</label>
  </div>
  <br>
  <div class="row">
    <form:input id="name" name="Email" type="Email" path="supplierEmail" required="required"/>
    <label for="name">Email</label>
  </div>
  <br>
  <div class="row">
  <c:if test="${check}">
        <span ><form:button type="submit" class="btn-danger" id="sendEmail" value="ADD" tabindex="5" name="add supplier">ADD</form:button></span></c:if>
        <c:if test="${!check}">
        
        <span ><form:button type="submit" class="btn-danger" id="sendEmail" value="ADD" tabindex="5" name="update supplier">UPDATE</form:button></span>
        </c:if>
  </div>
</form:form>
</div>
</div>
<div class="container">
  
<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Categories</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Categories" />
					</div>
					<table class="table table-hover" id="dev-table" >
						<thead>
							<tr>
								<th>id</th>
								<th>Name</th>
								<th>Address</th>
								<th>Contactno</th>
								<th>Email</th>
								<th>Date</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="s" items="${suplist}">
							<tr>
								<td>${s.getSupplierId() }</td>
								<td>${s.getSupplierName() }</td>
								<td>${s.getSupplierAddress() }</td>
								<td>${s.getSupplierContactNo() }</td>
								<td>${s.getSupplierEmail() }</td>
								<td>${s.getSupplierRegisterDate() }</td>
								
								 <td class="text-center"><a class='btn btn-info btn-xs' href="editsupplier?getsupid=${s.getSupplierId()}"><span class="glyphicon glyphicon-edit"></span> Edit</a>
								  <a href="deletesupplier?getsupid=${s.getSupplierId()}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			
</div>
<script>
/**
*   I don't recommend using this plugin on large tables, I just wrote it to make the demo useable. It will work fine for smaller tables 
*   but will likely encounter performance issues on larger tables.
*
*		<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Developers" />
*		$(input-element).filterTable()
*		
*	The important attributes are 'data-action="filter"' and 'data-filters="#table-selector"'
*/
(function(){
    'use strict';
	var $ = jQuery;
	$.fn.extend({
		filterTable: function(){
			return this.each(function(){
				$(this).on('keyup', function(e){
					$('.filterTable_no_results').remove();
					var $this = $(this), 
                        search = $this.val().toLowerCase(), 
                        target = $this.attr('data-filters'), 
                        $target = $(target), 
                        $rows = $target.find('tbody tr');
                        
					if(search == '') {
						$rows.show(); 
					} else {
						$rows.each(function(){
							var $this = $(this);
							$this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();
						})
						if($target.find('tbody tr:visible').size() === 0) {
							var col_count = $target.find('tr').first().find('td').size();
							var no_results = $('<tr class="filterTable_no_results"><td colspan="'+col_count+'">No results found</td></tr>')
							$target.find('tbody').append(no_results);
						}
					}
				});
			});
		}
	});
	$('[data-action="filter"]').filterTable();
})(jQuery);

$(function(){
    // attach table filter plugin to inputs
	$('[data-action="filter"]').filterTable();
	
	$('.container').on('click', '.panel-heading span.filter', function(e){
		var $this = $(this), 
			$panel = $this.parents('.panel');
		
		$panel.find('.panel-body').slideToggle();
		if($this.css('display') != 'none') {
			$panel.find('.panel-body input').focus();
		}
	});
	$('[data-toggle="tooltip"]').tooltip();
})
</script>
</body>
</html>