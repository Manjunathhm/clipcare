<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<title>Department Dashboard</title>
<head>
<meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/fullcalendar.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/stylesvitalbeat.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/main.css" />'>
   
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
<f:form id="departmentSection" modelAttribute="department">
<div class="col-md-3 col-sm-5">

<f:hidden class="form-control input-sm field_color caps" path="departmentId" hidden="true"/>

<label class="control-label">Department Name</label>
<f:input class="form-control input-sm field_color caps" path="departmentName" placeholder="Department Name"/>

<input type="submit" name="Save" value="Save">
<div id="departmentSaved" style="color: green; font-size:20px"></div>
</div>
</f:form>

	<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript">
    $(document).ready(function() {
    	$( "#departmentSection" ).on("submit", function(event) {
 		   event.preventDefault();
 		   var ref=$( this ).serialize();
 		   console.log(ref );
 		   
 		   $.ajax({
   	          type: "POST",
   	          url: "/LoginMavenSpringMVC/department/save",
   	          data: ref,
   	          success: function(response){
   	          // we have the response
   	          	console.log("Result : "+response);
   	          	$('#departmentSaved').html(response);
   	        	$('#departmentName').val('');
   	          
   	          },
   	          error: function(e){
   	          alert('Error: ' + e);
   	          }
   	       });
 		   
 		 });
    	
    });
    
    </script>
</body>
</html>