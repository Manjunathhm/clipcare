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
        <div class="panel-heading">
            <h3 class="panel-title">Billing</h3>
        </div>
        <f:form class="form" name="billingform">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-6 table-responsive">
                        <table id="selectedPatient" class="table table-bordered table-hover table-striped data">
                            <thead>
                                <tr>
                                    <th colspan="5" class="text-center">Patient Profile</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Patient ID|Name</th>
                                    <td>
                                    <br></td>
                                    <th>Enrolled Date</th>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th>Age
                                    <br>Gender</th>
                                    <td></td>
                                    <th>Contact</th>
                                    <td>Mobile Number
                                    <br> Email Id</td>
                                </tr>
                                <tr>
                                    <th>Treating Doctor</th>
                                    <td>Doc Name</td>
                                    <th>Referred Doctor</th>
                                    <td>Doc Name</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="col-md-6 table-responsive" id="listOfPatients"> 
                        <table id="patientsList" class="table table-bordered table-hover table-striped data">
                            <thead>
                                <tr>
                                    <th colspan="6" class="text-center">Patient Record</th>
                                </tr>
                                <tr>
                                	<th class="text-center">ID</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Age</th>
                                    <th class="text-center">Gender</th>
                                    <th class="text-center">Contact</th>
                                    <th class="text-center">Email ID</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="pat" items="${patients}" varStatus="status">
								<tr>
									<td class="text-center caps">${pat.patientId}</td>
									<td class="text-center caps">${pat.firstName} ${pat.middleName} ${pat.lastName}</td>
									<td class="text-center caps">${pat.age}</td>
									<td class="text-center caps">${pat.gender}</td>
									<td class="text-center caps">${pat.mobileNumber1}</td>
									<td class="text-center caps">${pat.emailId1}</td>
									<!-- <td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="selectP" style="color:#006699" data-toggle="tooltip" title="Select"></i></td> -->					
								</tr>
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
                            <c:forEach var="lastBill" items="${previousBills}" varStatus="status">
								<tr>
									<td class="text-center caps">${lastBill.serviceId}</td>
									<td class="text-center caps">${lastBill.billAmount}</td>
									<%-- <td class="text-center caps">${pat.age}</td>
									<td class="text-center caps">${pat.gender}</td>
									<td class="text-center caps">${pat.mobileNumber1}</td>
									<td class="text-center caps">${pat.emailId1}</td> --%>
									<!-- <td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="selectP" style="color:#006699" data-toggle="tooltip" title="Select"></i></td> -->					
								</tr>
							  </c:forEach>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 table-responsive">
                        <table class="table table-hover table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th colspan="12">Billing</th>
                                </tr>
                                <tr>
                                    <th>Service Code</th>
                                    <th>Description/Particulars</th>
                                    <th>Quantity</th>
                                    <th>Amount</th>
                                    <th>Discount</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-center">
                            <button type="button" class="btn btn-primary">Add Additional Services</button>
                        </div>
                        <div class="form-group pull-right col-md-3 col-sm-6">
                            <div class="col-md-4 col-sm-6">
                                <label class="control-label" for="billAmount">Bill Amount</label>
                            </div>
                            <div class="col-md-8 col-sm-6">
                                <input type="text" class="form-control" name="billAmount">
                            </div>
                            <div class="col-md-12">
                                <label></label>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <label class="control-label" for="discount">Discount</label>
                            </div>
                            <div class="col-md-8 col-sm-6">
                                <input type="text" class="form-control" name="discount">
                            </div>
                            <div class="col-md-12">
                                <label></label>
                            </div>
                            <div class="col-md-4 col-sm-6">
                                <label class="control-label" for="billAmount">Amount To Be Paid</label>
                            </div>
                            <div class="col-md-8 col-sm-6">
                                <input type="text" class="form-control" name="billAmount">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <hr>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-md-3">
                                <label for="mode">Payment Mode</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="Cash">Cash</label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="Cheque">Cheque</label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="Card">Card</label>
                                </div>
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <label for="amountPaid">Amount Paid</label>
                                <input type="text" class="form-control" name="amountPaid">
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <label for="amountDue">Amount Due</label>
                                <input type="text" class="form-control" name="amountDue">
                            </div>
                            <div class="col-sm-4 col-md-2">
                                <label for="dueDate">Due Date</label>
                                <input type="text" class="form-control" name="dueDate">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center mtop25">
                  <button type="button" class="btn btn-primary">Save</button>
                  <button type="button" class="btn btn-warning">Print</button>

                </div>
            </div>

        </f:form>
    </div>
</div>
<script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
<script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
<script type="text/javascript" src='<spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
<script type="text/javascript">
	$(document).ready(function() {
		
	});

	//************Select a Patient from the Table and Show the details in the form***************//
    var patientTable = $('#patientsList').DataTable();
	var table=document.getElementById("selectedPatient");
    $('#patientsList tbody').on( 'click', 'tr', function () {
  	console.log("dataInTable "+patientTable);
    	var data=patientTable.row( this ).data();
    	console.log("Data "+data);
    	console.log("G:: "+data[3]);
    	//$("#patientName").innerHTML=data[0];
    	
    	table.rows[1].cells[1].innerHTML = (data[0]+"<br>"+data[1]);
    	table.rows[2].cells[1].innerHTML = (data[2]+"<br>"+data[3]);
    	table.rows[2].cells[3].innerHTML = (data[4]+"<br>"+data[5]);
    	$.ajax({
 	          type: "POST",
 	          url: "/LoginMavenSpringMVC/billing/lastBill",
 	          data: "patientId=" + data[0],
 	          success: function(response){
 	          	
 	          console.log("Showing the LastBill Details: "+response);
 	         	
 	          },
 	          error: function(e){
 	          alert('Error: ' + e);
 	          }
 	       });
   } );
	
</script>
</body>
</html>