<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<title>Doctor's Master</title>
<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-switch.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-select.min.css" />' >
    <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-timepicker.min.css" />' >
   
</head>
<body>

<f:form class="form-horizontal" id="registrationform" modelAttribute="bill" method="post" action="checker">

	<div class=row>
    <div Class="col-sm-12 ">
       <h3 class="panel-heading panel-default"><strong>Shift</strong></h3>
    </div>                    
    </div>
    
    <table class="table table-bordered table-hover" id="shiftsTable">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 300px">Working Date</th>
                            <th class="text-center" >Session</th>
                            <th class="text-center" >Strict session</th>
                            <th class="text-center" ></th>
                            <th class="text-center" >Session</th>
                            <th class="text-center" >Strict session</th>
                        </tr>
                    </thead>
	                   <tbody id="serviceBody">
	                   <%-- <c:if test="${fn:length(bill.serviceList) > 0}" > --%>
	                   <tr>
	                   
	                   <td>
	                    	<f:select class="form-control demo" path="serviceList[0].serviceName">
	            				<f:options items="${services}"></f:options>
	       				    </f:select>
	            		</td>
	                    <td>
	                        <f:input  type="text" class="form-control input-sm " path="serviceList[0].serviceCode"/>            
		                </td>
		                <td>
	                    	<f:input  type="text" class="form-control input-sm " path="serviceList[0].serviceCost"/>
	                    </td>
	                    <td class="text-center">
	                    	<div class="text-center"><f:input path="serviceList[0].quantity"  /></div>
	                   
	                    </td>
	                    <td class="text-center">
	                    	<div class="text-center"><f:input path="serviceList[0].discount"  /></div>
	                    </td>
	                    
	                    <td class="text-center">
	                    	<div class="text-center"><f:input path="serviceList[0].serviceTotal"  /></div>
	                    </td>
                    
                     <td><div id="glyph" class="topmargin">
                        <label></label>
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div></td>
                                          
                 </tr>
              <%--  </c:if> --%>
          <tr  class="clone hide" id="cloneObject">
               <td>
                   
                    <f:select class="form-control demo" path="serviceList[0].serviceName">
            			<f:options items="${services}"></f:options>
       				     </f:select></td>
               <td>
                        <f:input  type="text" class="form-control input-sm " disabled="disabled" path="clone.serviceCode"/>
                    </td>
                    <td>
                        <f:input  type="text" class="form-control input-sm " disabled="disabled" path="clone.serviceCost"/>
                    
               </td>
                    <td class="text-center">
                    
                    	<div class="text-center"><f:input disabled="disabled" path="clone.quantity"  /></div>
                   
                    </td>
                    
                    <td class="text-center">
                    
                    	
                    	<div class="text-center"><f:input disabled="disabled" path="clone.discount"  /></div>
                   
                    </td>
                    
                    <td class="text-center">
                   
                    	<div class="text-center"><f:input disabled="disabled" path="clone.serviceTotal"  /></div>
                  
                    </td>
                    
                     <td><div id="glyph" class="topmargin">
                        <label></label>
                         <span class="glyphicon glyphicon-plus glyph_size" id="add"  aria-hidden="true"></span>
                    </div></td>
                                          
                 </tr>
                 
                   </tbody>
                   </table>



</f:form>

<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap-switch.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-datepicker.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-select.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-timepicker.min.js"/>'></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCC-7IBPlf3APqYJBud27uhWoHv_DJAP4&libraries=places"></script>
  
<script type="text/javascript">

$(document).ready(function(){
	$('[name="serviceList[0].serviceName"]').change(function() {
		console.log("Demo for changing the select options");
		
		 var selectedService = $('[name="serviceList[0].serviceName"]').val();
		 
		console.log("ID: "+selectedService);
       
        $.ajax({
 	        type: "POST",
 	        url: "/LoginMavenSpringMVC/billing/loadService",
 	        data: "serviceId=" + selectedService,
 	        success: function(response){
 	        console.log("Showing the selected Service Details: "+response);
 	       	jsonData = JSON.parse(response);
 		   	$.each(jsonData, function(i, service) {
 		   		console.log(i);
 		   		console.log(service);
 		   		console.log(service.serviceMasterId);
 		   		$('[name="serviceList[0].serviceCode"]').val(service.serviceCode);
 		   		$('[name="serviceList[0].serviceCost"]').val(service.serviceCost);
            	
 	         });
 	    },
 	          error: function(e){
 	          alert('Error: ' + e);
 	          }
 	        
 	       }); 
		
		 
		
	});
	
	
	
	
var glyphRemove="";
var nextIndex=0;
glyphRemove="<span class='glyphicon glyphicon-minus glyph_size' onClick='$(this).parent().parent().parent().remove()'   aria-hidden='true'></span>";
	$("#add").click(function() {
		
		var Index =( $("#shiftsTable").find('input').length/5);
		console.log(Index);
		nextIndex=Index-1;    		
		console.log(nextIndex);    	
		
			var clone= $("#cloneObject").clone();
			//console.log("coming Inside")
			clone.removeClass('hide');    			
			clone.prop('disabled',false);
			clone.find('select:eq(0)').attr('name','serviceList['+nextIndex+'].serviceName');
			clone.find('select:eq(0)').attr('id','serviceList['+nextIndex+'].serviceName');     		    		
    		clone.find('input:eq(0)').attr('name','serviceList['+nextIndex+'].serviceCode');
    		clone.find('input:eq(0)').attr('id','serviceList['+nextIndex+'].serviceCode');
    		clone.find('input:eq(1)').attr('name','serviceList['+nextIndex+'].serviceCost');
    		clone.find('input:eq(1)').attr('id','serviceList['+nextIndex+'].serviceCost');
    		clone.find('input:eq(2)').attr('name','serviceList['+nextIndex+'].quantity');
    		clone.find('input:eq(2)').attr('id','serviceList['+nextIndex+'].quantity');
    		clone.find('input:eq(3)').attr('name','serviceList['+nextIndex+'].discount');
    		clone.find('input:eq(3)').attr('id','serviceList['+nextIndex+'].discount');
    		clone.find('input:eq(4)').attr('name','serviceList['+nextIndex+'].serviceTotal');
    		clone.find('input:eq(4)').attr('id','serviceList['+nextIndex+'].serviceTotal');
    		
    		
    		clone.find('input:eq(0)').val(' ');
    		clone.find('input:eq(1)').val(' ');
    		clone.find('input:eq(2)').val(' ');
    		clone.find('input:eq(3)').val(' ');
    		clone.find('input:eq(4)').val(' ');
    		
    		clone.find('#add').remove();
    		
    		clone.find('#glyph').append(glyphRemove);
    		clone.find('span').attr('id','remove['+nextIndex+']');
    		clone.appendTo("#shiftsTable"); 
    		
    		$('[name="serviceList['+nextIndex+'].serviceName"]').change(function() {
    			console.log("Demo for changing the select options");
    			
    			 var selectedServiceClone = $('[name="serviceList['+nextIndex+'].serviceName"]').val();
    			 
    			console.log("ID: "+selectedServiceClone);
    	       
    	        $.ajax({
    	 	        type: "POST",
    	 	        url: "/LoginMavenSpringMVC/billing/loadService",
    	 	        data: "serviceId=" + selectedServiceClone,
    	 	        success: function(response){
    	 	        console.log("Showing the selected Service Details: "+response);
    	 	       	jsonData = JSON.parse(response);
    	 		   	$.each(jsonData, function(i, service) {
    	 		   		console.log(i);
    	 		   		console.log("nextindex here is"+nextIndex);
    	 		   		console.log(service.serviceMasterId);
    	 		   		$('[name="serviceList['+nextIndex+'].serviceCode"]').val(service.serviceCode);
    	 		   		$('[name="serviceList['+nextIndex+'].serviceCost"]').val(service.serviceCost);
    	            	
    	 	         });
    	 	    },
    	 	          error: function(e){
    	 	          alert('Error: ' + e);
    	 	          }
    	 	        
    	 	       }); 
    			
    			 
    			
    		});
		
		
         
    	
	});
});
</script>

 </body>
</html>