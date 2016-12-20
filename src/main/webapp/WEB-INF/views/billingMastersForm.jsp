<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<title>Appointment Dashboard</title>

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/fullcalendar.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/stylesvitalbeat.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/main.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >
   
    <style>
        body {
            margin: 40px 10px;
            padding: 0;
            font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
            font-size: 14px;
        }
        
   	</style>

</head>

<body>
<div class="container-fluid">
 	<div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Add Billing Services</h3>
        </div>
        <div class="panel-body" >
        <f:form class="form-horizontal" id="billingMasterForm" modelAttribute="billingMasters" enctype="multipart/form-data" >
       
       	<div id="masterSaved" style="color: green; font-size:20px"></div>
        <div class="form-group">
        
        <div class="col-sm-4 col-md-4">
       		<label for = "derpartment">Select Department</label>
       		<f:select class="form-control" path="departmentId" items="${departments}">
           </f:select>
         </div>
          
         <div class="col-sm-4 col-md-4">
           	<label for = "serviceName">Service Name</label>
           	<f:input type="text" class="form-control" path="serviceName" placeholder="Enter Service Name"/>
         </div>
         
         <div class="col-sm-4 col-md-4">
           	<label for = "serviceCode">Service Abbreviation</label>
           	<f:input type="text" class="form-control" path="serviceAbbreviation" placeholder="Enter Service Abbreviation"/>
         </div>
          
         </div>

         <div class="form-group">
          	<div class="col-sm-4 col-md-4">
           	<label for = "serviceCode">Service Code</label>
           	<f:input type="text" class="form-control" path="serviceCode" placeholder="Enter Service Code"/>
         	</div>
         
         	<div class="col-sm-4 col-md-4">
           		<label >Amount</label>
           		<f:input type="number" class="form-control" path="costOfTheBill" placeholder="Enter Service Amount"/>
          	</div>
          	
          	<div class="col-sm-4 col-md-4">
          		<label for="abcCost">Activity Based Cost</label>
           		<f:input type="number" class="form-control" path="ABCCost" placeholder="Enter the Activity Based Cost"/>
          	</div>
         </div>
         <div class="form-group">
         
         	<div class="col-sm-4 col-md-4">
           		<label for="billingAmount">Cost Price</label>
           		<f:input type="number" class="form-control" path="billingAmount" placeholder="Enter Cost Price"/>
          	</div> 
          	<div class="col-sm-4 col-md-4">
           		<label for="effectFrom">Effective From</label>
           		<f:input type="date" class="form-control" path="effectiveFrom" placeholder="MM/DD/YYYY"/>
          	</div>
          	<div class="col-sm-4 col-md-4">
           		<label for="upload">Upload Circular</label>
           		<f:input class="form-control" name="file" type="file" path="file"/>
          	</div>
          	
         </div>
         <div class="form-group text-center">
         <div class="col-sm-12">
          <input type="submit" value="Save" />
         </div>
        
        </div>
        </f:form>
    </div>
	</div>
</div>
<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
<script type="text/javascript">

$("#billingMasterForm").submit(function(){

    var formData = new FormData($(this)[0]);

    $.ajax({
        url: "/LoginMavenSpringMVC/billingMasters/save",
        type: 'POST',
        data: formData,
        async: false,
        success: function (response) {
        	//console.log("Result : "+response);
	          	$('#masterSaved').html(response);
	        	$('#serviceCode').val('');
	        	$('#serviceName').val('');
	        	$('#serviceAbbreviation').val('');
	        	$('#costOfTheBill').val('');
	        	$('#ABCCost').val('');
	        	$('#billingAmount').val('');
	        	$('#effectiveFrom').val('');
	        	$('#file').val('');
        },
        cache: false,
        contentType: false,
        processData: false
    });

    return false;
});
    
    </script>
</body>
</html>