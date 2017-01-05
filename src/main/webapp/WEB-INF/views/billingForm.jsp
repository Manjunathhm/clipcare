<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<title>Billing Page</title>

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
        
        
        
            <div class="panel-body"> 
                
                <div class="row">
                    <div class="col-md-6 table-responsive">
                        <table id="selectedPatient" class="table table-bordered table-hover table-striped data">
                            <thead>
                                <tr>
                                    <th colspan="5" class="text-center">Bill Receipt</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Patient ID<br>Name</th>
                                    <td class="caps">
                                    <br></td>
                                    <th>Billing Date</th>
                                    <td id="todayDate">
                                    <br></td>
                                </tr>
                                <tr>
                                    <th>Age<br>Gender</th>
                                    <td></td>
                                    <th>Contact</th>
	                                <td></td>
                                </tr>
                                <tr>
                                    <th>Treating Doctor</th>
                                    <td></td>
                                    <th>Referred By</th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="col-md-6 table-responsive" id="listOfAppointments"> 
                        <table id="appointmentList" class="table table-bordered table-hover table-striped data">
                            <thead>
                                <tr>
                                    <th colspan="6" class="text-center">Today's Appointments</th>
                                </tr>
                                <tr>
                                	<th class="text-center">Appointment ID</th>
                                    <th class="text-center">Patient ID</th>
                                    <th class="text-center">Patient Name</th>
                                    <th class="text-center">Doctor Name</th>
                                    <th class="text-center">Status</th>
                                    <!-- <th class="text-center">Contact</th> -->
                                    <!-- <th class="text-center">Select</th> -->
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="appt" items="${appointments}" varStatus="status">
								<tr>
									<td class="text-center caps">${appt.appointmentId}</td>
									
									<c:forEach var="entry" items="${patientNames}">
										<c:if test="${appt.patientId eq entry.key}">
											<td class="text-center caps"><c:out value="${entry.key}"/></td>
											<td class="text-center caps"><c:out value="${entry.value}"/></td>
									</c:if></c:forEach>
										
									<td class="text-center caps">
										<c:forEach var="m" items="${doctorNames}">
											<c:if test="${appt.doctorId eq m.key}">
											<c:out value="${m.value}">
										</c:out></c:if></c:forEach>
									</td>
									<td class="text-center caps">${appt.currentStatus}</td>

<!-- 		<td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="selectP" style="color:#006699" data-toggle="tooltip" title="Select"></i></td>					-->								</tr>
							  </c:forEach>
                             </tbody>
                        </table>
                    </div>
                </div>
          <div class="row">
              <div class="col-md-6 table-responsive">
                   <table id="previousList" class="table  table-bordered table-hover borderpanel">
                      <thead>
                          <tr>
                              <th colspan="6">Previous Billing Records</th>
                          </tr>
                          <tr>
                              <th>Billed Date</th>
                              <th>Bill Number</th>
                              <th>Amount</th>
                              <th>Due Amount</th>
                              <th>Remainder</th>
                              <th>Remarks</th>
                          </tr>
                      </thead>
                      <tbody>
                      </tbody>
                  </table>
              </div>
          </div>
  		<f:form class="form" name="billingform" modelAttribute="bill" action="save" id="billForm"> 
          <div class="row">
              <div class="col-md-12 table-responsive">
                 <table class="table table-bordered table-hover" id="serviceTable">
                    <thead>
                        <tr>
                            <th class="text-center">Description</th>
                            <th class="text-center hideToPrint" >Service Code</th>
                            <th class="text-center" >Service Cost</th>
                            <th style="width:100px" class="text-center" >Quantity</th>
                            <th style="width:100px" class="text-center" >Discount</th>
                            <th class="text-center" >Service Total</th>
                            <th class="text-center hideToPrint">Add/Remove</th>
                        </tr>
                    </thead>
	               <tbody id="serviceBody">
	                   <tr>
	                   
	                   <td>
	                    	<f:select class="form-control text-center" path="serviceList[0].serviceName">
	                    		<f:option value="">--Select Service--</f:option>
	            				<f:options items="${services}"></f:options>
	       				    </f:select>
	            		</td>
	                    
	                    <td class="hideToPrint">
	                        <f:input  type="text" class="form-control input-sm " path="serviceList[0].serviceCode"/>            
		                </td>
		                
		                <td>
	                    	<f:input  type="number" class="form-control input-sm" path="serviceList[0].serviceCost"/>
	                    </td>
	                   
	                    <td>
	                    	<f:input type="number" class="form-control input-sm" path="serviceList[0].quantity" onblur="serviceTotalQ(0)" />
	                    </td>
	                    
	                   	<td>
	                    	<f:input type="text" class="form-control input-sm" path="serviceList[0].discount" onblur="serviceTotalD(0)"/>
	                    </td>
	                    
	                    <td>
	                    	<f:input type="number" class="form-control input-sm" path="serviceList[0].serviceTotal"/>
	                    </td>
                    
                     <td class="hideToPrint"><div id="glyph">
                        <label></label>
                         <span class="glyphicon glyphicon-plus glyph_size center" id="add" aria-hidden="true"></span>
                    </div></td>
                                          
                 </tr>
          
          <tr  class="clone hide" id="cloneObject">
               <td>
                   
                    <f:select class="form-control text-center" path="clone.serviceName">
            			<f:option value="">--Select Service--</f:option>
            			<f:options items="${services}"></f:options>
       				</f:select>
       			</td>
               <td class="hideToPrint">
                  <f:input  type="text" class="form-control input-sm" disabled="disabled" path="clone.serviceCode"/>
               </td>
               		<td>
                     	<f:input  type="number" class="form-control input-sm " disabled="disabled" path="clone.serviceCost"/>
               		</td>
                    
                    <td class="text-center">
                    	<div class="text-center"><f:input type="number" class="form-control input-sm" disabled="disabled" path="clone.quantity" onblur="serviceTotalQ()" /></div>
                    </td>
                    
                    <td class="text-center">
                    	<div class="text-center"><f:input type="text" class="form-control input-sm" disabled="disabled" path="clone.discount" onblur="serviceTotalD()" /></div>
                    </td>
                    
                    <td class="text-center">
                    	<div class="text-center"><f:input type="number" class="form-control input-sm" disabled="disabled" path="clone.serviceTotal"  /></div>
                    </td>
                    
                     <td class="hideToPrint"><div id="glyph">
                        <label></label>
                        <span class="glyphicon glyphicon-plus glyph_size center" id="add"  aria-hidden="true"></span>
                    </div></td>
                                          
                 </tr>
                 
                   </tbody>
                   </table>
                   
           <div class="form-group  col-md-8 col-sm-6">
              <div class="row">
              <div class="col-md-12 table-responsive">
                   <table id="advanceList" class="table  table-bordered table-hover borderpanel">
                      <thead>
                          <tr>
                              <th colspan="6">Paid Amount History</th>
                          </tr>
                          <tr>
                              <th>Receipt Number</th>
                              <th>Bill Date</th>
                              <th>Amount Paid</th>
                              <th>Mode Of Payment</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                      </tbody>
                  </table>
              	</div>
          		</div>
            </div>
              
           	<div class="form-group col-md-4 col-sm-6 col-xs-6">
                    
                    <div class="col-md-5 col-sm-6 marginTop">
                        <label class="control-label pull-left" for="billAmount">Bill Amount</label>
                    </div>
                    <div class="col-md-7  col-sm-6 marginTop">
                        <f:input type="number" class="form-control" path="billAmount" name="billAmount" onfocus="calculateTotal()"/>
                    </div>
                  	<div class="clearfix"></div>
                   	<div class="col-md-5  col-sm-6 marginTop">
                        <label class="control-label" for="amountToBePaid">To Be Paid</label>
                    </div>
                    <div class="col-md-7 col-sm-6 marginTop">
                        <input type="number" class="form-control" name="amountToBePaid"/>
                    </div>
                   	<div class="clearfix"></div>
                    <div class="col-md-5 col-sm-6 marginTop">
                        <label class="control-label hideToPrint" for="paidAmount">Amount Received</label>
                    </div>
                    <div class="col-md-7 col-sm-6 marginTop hideToPrint">
                        <f:input type="text" class="form-control" name="paidAmount" path="paidAmount" onblur="calculateDue()"/>
                    </div>
                    
                    <div class="clearfix"></div>
                    <div class="col-md-5 col-sm-6 marginTop hideToPrint">
                        <label class="control-label hideToPrint" for="toBeReturned">To Be Returned</label>
                    </div>
                    <div class="col-md-7 col-sm-6 marginTop hideToPrint">
                        <input type="text" class="form-control hideToPrint" name="toBeReturned">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-5 col-sm-6 marginTop">
                        <label class="control-label" for="dueAmount">Balance</label>
                    </div>
                    <div class="col-md-7 col-sm-6 marginTop">
                        <input type="number" class="form-control" name="dueAmount">
                    </div>
                    <f:hidden path="billingDate" class="form-control input-sm " placeholder="mm/dd/yyyy"/>
                    <f:hidden path="patientId" name="patientId"/>
                    <f:hidden path="appointmentId" name="appointmentId"/>
                    
            	</div> 
             </div>
            </div>

             <div class="text-center mtop25">
                  <input id="saveButton" type="button" class="btn btn-primary" value="Save">
                  <button id="printButton" type="button" class="btn btn-warning" onclick="printReceipt()">Print</button>
             </div>
           	</f:form>
            </div>
            
    </div>
</div>
<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
<script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
<script type="text/javascript" src='<spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
<script type="text/javascript" src='<spring:url value="/resources/js/moment.min.js"/>'></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		console.log("Hiiiii");
		var date=moment().format("MM/DD/YYYY");
		console.log(date);
		document.getElementById('todayDate').innerHTML = date +"TMPID01";
		var advanceHistory=document.getElementById("advanceList");
		advanceHistory.style.display='none';
		//document.getElementById('billingDate').val(date);
		$('[name="billingDate"]').val(date);
		$('[name="serviceList[0].serviceCost"]').val("");
		$('[name="serviceList[0].quantity"]').val("");
		$('[name="serviceList[0].discount"]').val("");
		$('[name="serviceList[0].serviceTotal"]').val("");
		
		
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
	 		   		//console.log("$$$$$$"+i);
 		   			$('[name="serviceList[0].quantity"]').val(1);
 		   			$('[name="serviceList[0].discount"]').val(0);
 		   			$('[name="serviceList[0].serviceTotal"]').val(service.serviceCost*1);
	            	
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
				
				var Index =( $("#serviceTable").find('input').length/5);
				console.log(Index);
				nextIndex=Index-1;    		
				console.log(nextIndex);    	
				
					var clone= $("#cloneObject").clone();
					clone.removeClass('hide');    			
					clone.prop('disabled',false);
					clone.find('select:eq(0)').attr('name','serviceList['+nextIndex+'].serviceName');
					clone.find('select:eq(0)').attr('id','serviceList['+nextIndex+'].serviceName'); 
					clone.find('select:eq(0)').attr('onblur','serviceTotalQ('+nextIndex+')');
					
		    		clone.find('input:eq(0)').attr('name','serviceList['+nextIndex+'].serviceCode');
		    		clone.find('input:eq(0)').attr('id','serviceList['+nextIndex+'].serviceCode');
		    		clone.find('input:eq(1)').attr('name','serviceList['+nextIndex+'].serviceCost');
		    		clone.find('input:eq(1)').attr('id','serviceList['+nextIndex+'].serviceCost');
		    		clone.find('input:eq(2)').attr('name','serviceList['+nextIndex+'].quantity');
		    		clone.find('input:eq(2)').attr('id','serviceList['+nextIndex+'].quantity');
		    		clone.find('input:eq(2)').attr('onblur','serviceTotalQ('+nextIndex+')');
		    		
		    		clone.find('input:eq(3)').attr('name','serviceList['+nextIndex+'].discount');
		    		clone.find('input:eq(3)').attr('id','serviceList['+nextIndex+'].discount');
		    		clone.find('input:eq(3)').attr('onblur','serviceTotalD('+nextIndex+')');
		    		
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
		    		clone.appendTo("#serviceTable"); 
		    		
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
		    	 		   		$('[name="serviceList['+nextIndex+'].quantity"]').val(1);
		    	 		   		$('[name="serviceList['+nextIndex+'].discount"]').val(0);
		    	 		   		$('[name="serviceList['+nextIndex+'].serviceTotal"]').val(service.serviceCost*1);
		    	            	
		    	 	         });
		    	 	    },
		    	 	          error: function(e){
		    	 	          alert('Error: ' + e);
		    	 	          }
		    	 	        
		    	 	       }); 
		    		});
			});
		
	});
 
	/*Auto calculation of the Service Total based on the Entered Quantity*/
	function serviceTotalQ(index){
		console.log(index);
		var quantity=$('[name="serviceList['+index+'].quantity"]').val();
		var serviceCost=$('[name="serviceList['+index+'].serviceCost"]').val();
		$('[name="serviceList['+index+'].serviceTotal"]').val(quantity*serviceCost);
		
	}
	
	/*Auto calculation of the Service Total based on the Entered Discount*/
	function serviceTotalD(index){
		var discount=$('[name="serviceList['+index+'].discount"]').val();
		
		if(isFinite(discount)){
			var res=$('[name="serviceList['+index+'].serviceTotal"]').val( $('[name="serviceList['+index+'].serviceTotal"]').val() - discount);
        }
        else{
			var perc=parseInt($('[name="serviceList['+index+'].discount"]').val());
		
            var discountAmount = ($('[name="serviceList['+index+'].serviceTotal"]').val() * perc) / 100;
            $('[name="serviceList['+index+'].serviceTotal"]').val($('[name="serviceList['+index+'].serviceTotal"]').val() - discountAmount);

        }
	}
	
	/*Auto calculation of the Total Amount to be paid.*/
	function calculateTotal(){
		console.log("Calculating the total...");
		var rows=$('#serviceTable tr').length-2;
		console.log(rows);
		var totalAmount=0;
		var paidAdvance=0;
		for(var i=0;i<rows;i++){
			console.log(totalAmount);
			console.log(i);
			totalAmount=(+totalAmount+ +$('[name="serviceList['+i+'].serviceTotal"]').val());
			
		}
		for(var j=0;j<advanceTotal.length;j++){
			paidAdvance=paidAdvance+(parseInt(advanceTotal[j]));
		}
		console.log()
		$('[name="billAmount"]').val(totalAmount);
		$('[name="amountToBePaid"]').val(totalAmount-paidAdvance);
			/* paid=(+paid+ +$('tbody td:eq(2)').val());
			console.log(paid);
			console.log($('td:eq(2)')); */
			
		
		/* $('[name="amountToBePaid"]').val(totalAmount);
		$('[name="paidAmount"]').val(totalAmount);
		$('[name="dueAmount"]').val(totalAmount); */
		//$('[name="amountToBeReturned"]').val(totalAmount);
	}
	
	function calculateDue(){
		console.log("Calculate Due amount.");
		$('[name="dueAmount"]').val($('[name="amountToBePaid"]').val()-$('[name="paidAmount"]').val());
		
	}
	
	//************Select a Patient from the Table and Show the details in the form***************//
	var lastBills=null;
	var advances=null;
	var patientData=null;
	var appointmentTable = $('#appointmentList').DataTable();
	var table=document.getElementById("selectedPatient");
	var advanceTotal=[];
    $('#appointmentList tbody').on( 'click', 'tr', function () {
  	console.log("dataInTable "+appointmentTable);
    	var data=appointmentTable.row( this ).data();
    	console.log("Data "+data[0]);
    	
    	$.ajax({
 	       type: "POST",
 	       url: "/LoginMavenSpringMVC/billing/"+data[1],
 	       data: "patientId=" + data[1],
 	       success: function(patientHistory){
 	       console.log("Showing the Patient Details: "+patientHistory[0]);
 	       patientData=JSON.parse(patientHistory[0]);
 	       $.each(patientData, function(i,patient){
 	    	table.rows[1].cells[1].innerHTML = (patient.patientId+"<br>"+patient.firstName+" "+patient.middleName+" "+patient.lastName);
 	    	table.rows[2].cells[1].innerHTML= (patient.age+"<br>"+patient.gender);
 	    	table.rows[2].cells[3].innerHTML= (patient.mobileNumber1+"<br>"+patient.emailId1);
 	    	table.rows[3].cells[1].innerHTML= data[3];
 	    	table.rows[3].cells[3].innerHTML= patientHistory[2];
 	    	$('[name="patientId"]').val(patient.patientId);
 	    	$('[name="appointmentId"]').val(data[0]);
 	    	/* table.rows[2].cells[3].innerHTML= (patient.currentAddress.address+"<br>"+patient.currentAddress.landmark+"<br>"+patient.currentAddress.city+"<br>"+patient.currentAddress.pincode);
 	    	console.log(patient.currentAddress.address); */
 	       })
 	        
 	       console.log("Showing the Last Bill details of Patient: "+patientHistory[1]);
 	       lastBills = JSON.parse(patientHistory[1]);
 	      $("#previousList tbody tr").remove();
 		  $.each(lastBills, function(i, bill) {		   
 				var newRowContent = "<tr><td>"+bill.billingDate+"</td><td>"+bill.billingId+"</td><td>"+bill.billAmount+"</td><td>"+bill.dueAmount+"</td><td>"+bill.dueDate+"</td><td>"+bill.remarks+"</td></tr>";
 				$("#previousList tbody").append(newRowContent);
 	         });
 		 advances=JSON.parse(patientHistory[3]);
 		 console.log("******");
 		 console.log(advances);
 		 if(advances.length>0){
 			var advanceHistory=document.getElementById("advanceList");
 			advanceHistory.style.display="";
 		 $.each(advances, function(i, advance) {
 			
				var newRowContent = "<tr><td>"+advance.billingId+"</td><td>"+advance.billingDate+"</td><td class='advancePaid"+i+"'>"+advance.paidAmount+"</td><td>"+advance.modeOfPayment+"</td></tr>";
				$("#advanceList tbody").append(newRowContent);
				advanceTotal.push($('.advancePaid'+i).text());
				console.log($('.advancePaid'+i).text());	
				
	         });
 		console.log(advanceTotal);
 		 	
 		 }
 	    },
 	          error: function(e){
 	          alert('Error: ' + e); 
 	          }
 	        
 	       });
    	
   } );

     	function printReceipt(printID){
     	console.log("PRinting the receipt");
     	var pid=document.getElementById("printButton");
     	var sid=document.getElementById("saveButton");
     	var aptTable=document.getElementById("listOfAppointments");
     	var billHistory=document.getElementById("previousList");
     	$(".hideToPrint").css({'display':'none'});
     	
     	pid.style.display='none';
     	sid.style.display='none';
     	aptTable.style.display='none';
     	billHistory.style.display='none';
     	
     	window.print();
     	
     	$(".hideToPrint").css({'display':'block'});
     	aptTable.style.display='block';
     	pid.style.display='inline-block';
     	sid.style.display='inline-block';
     	billHistory.style.display="";
     	
    }
     	
     	
     	$('input#saveButton').on('click', function(e){
     		event.preventDefault();
     		console.log("Saving the bill");
     		var billData=$('form#billForm').serialize();
     		console.log(billData);
     		
     		$.ajax({
    	          type: "POST",
    	          url: "/LoginMavenSpringMVC/billing/save",
    	          data: billData,
    	          success: function(response){
    	          // we have the response
    	          	alert("Result : "+response);
    	          	/* $('#referralSaved').html(response[0]);
    	        	$('#referralId').val(response[1]);
    	        	$('#referralName').val(response[2]); */
    	          
    	          },
    	          error: function(e){
    	          alert('Error: ' + e);
    	          }
    	       });
     		
     	})
     	
    
</script>
</body>
</html>