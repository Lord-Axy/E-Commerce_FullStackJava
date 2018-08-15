<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Fanthomless Realm</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
  <style>
	
.col-2 {
    float: left;
    padding: 0 20px;
    width: 50%;
}

/* BASIC CONTACT FORM CSS */
#contact_form input,
#contact_form textarea {
    height: 45px;
    line-height: 1.4em;
    padding-left: 20px; /* Change this to fit your label text width */
    width: 100%;
}
#contact_form textarea {
    padding: 20px;
}
#contact_form label {
    display: inline-block;
    height: 45px;
    line-height: 1.4em;
    margin-bottom: 20px;
    position: relative;
    width: 100%;
}
#contact_form label input {
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
}
#contact_form label span {
    background-color: #fff;
    font-size: 14px;
    font-weight: 200;
    position: absolute;
    left: 10px;
    top: 13px;
    padding: 0 8px;
    pointer-events: none;
}
#contact_form .populated {
    padding-left: 70px;
}
#contact_form input:focus + span,
#contact_form input:active + span,
#contact_form textarea:focus + span,
#contact_form textarea:active + span {
    top: -9px; /* Change this to fit your label text width */
}
#contact_form input[type="submit"] {
  clear: both;
  display: block;
  height: auto;
  padding: 0;
  width: auto;
}
/* ANIMATION */
#contact_form label input {
    transition: padding 0.3s ease 0s;
}
#contact_form label span {
    transition: top 0.3s ease 0s, color 0.3s ease 0s;
}
#contact_form input:focus,
#contact_form textarea:focus {
    transition: all 0.3s ease;
}

input[type="email"],input[type="text"],textarea{
    
}

input[type="passsword"]:focus, input[type="text"]:focus, input[type="email"]:focus, input[type="email"]:focus, textarea:focus, input[type="tel"]:focus {
    border: 1px solid #0074c3!important;
    -moz-transition: all .3s ease-in;
    -o-transition: all .3s ease-in;
    -webkit-transition: all .3s ease-in;
    transition: all .3s ease-in;
}
input[type="passsword"], input[type="text"], input[type="email"], input[type="email"], input[type="tel"],textarea {
    height: 60px;
    width: calc(100% - 12px);
    border: 1px solid #cfcfcf;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    margin-bottom: 20px;
    outline: none;
    background: transparent;
    padding-left: 23px;
    font-size: 14px;
    line-height: 1.3px;
    flaot: left;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    outline: none;
    box-shadow: none;
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
  <div class="container">
    <br> <br>
   
    <form:form modelAttribute="categoryAgent" action="categoryRegister">
    
	<div class="row">
	<c:if test="${!check}">
	<div id="contact_form">
        	
            <label>
                <form:input type="text" tabindex="1" name="name" path="categoryId" readonly="true"></form:input>
                <span>CategoryId:</span>
            </label>
            </div>
		   </c:if>
		    <div id="contact_form">
        	
            <label>
                <form:input type="text" tabindex="1" name="name" path="categoryName"></form:input>
                <span>CategoryName:</span>
            </label>
            </div>
              
        </div>
        <c:if test="${check}">
        <span ><form:button type="submit" class="btn-danger" id="sendEmail" value="ADD" tabindex="5" name="add category">ADD</form:button></span></c:if>
        <c:if test="${!check}">
        
        <span ><form:button type="submit" class="btn-danger" id="sendEmail" value="ADD" tabindex="5" name="update category">UPDATE</form:button></span>
        </a></span></c:if>
        
    </form:form>
    
    </div>

	</div>
</div>


<div class="container">
	<div class="row">
	    <div id="tit">
        <div id="txt"><h3>::::::::::::::::::::::::::::</h3></div>
        </div>
	</div>
</div>
<br>
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
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>id</th>
								<th>Name</th>
								<th>Date</th>
								
							</tr>
						</thead>
						<tbody>
						<c:forEach var="c" items="${catlist}">
							<tr>
								<td>${c.getCategoryId() }</td>
								<td>${c.getCategoryName() }</td>
								<td>${c.getCategoryRegisterDate() }</td>
								
								 <td class="text-center"><a href="editcategory?getcatid=${c.getCategoryId()}" class='btn btn-info btn-xs'>
								 <span class="glyphicon glyphicon-edit"></span> Edit</a> 
								 <a href="deletecategory?getcatid=${c.getCategoryId()}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove">
								 </span> Del</a></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
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
  </html>