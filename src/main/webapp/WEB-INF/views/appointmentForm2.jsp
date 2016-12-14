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
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-switch.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/fullcalendar.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/hmsCss.css" />'>
   
    <style>
        body {
            margin: 40px 10px;
            padding: 0;
            font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
            font-size: 14px;
        }
        
        #calendar {
            
            margin: 0 auto;
            border: 1px solid black;
        }
        .widthName{
			width: 150px;
	}        
        .daysWidth{
			width: 150px;	
		}
		.spanSize{
			font-size:10px;
		}
		
    </style>

</head>

<body>

    <header>
        <div class="header-logo row">
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                <img src="" class="col-xs-6 col-sm-10 col-md-6 col-lg-4 img-responsive">
            </div>
        </div>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="http://www.aventyn.com/">Aventyn</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Master Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="referral_master.html">Referral</a></li>
                                <li><a href="masterspayment.html">Payment</a></li>
                                <li><a href="masterscareplan.html">Care Plan</a></li>
                                <li><a href="NewVitalsMaster.html">Vitals </a></li>
                                <li><a href="mastershistory.html">History </a></li>
                                <li><a href="master_for_services.html">Lab Test </a></li>
                                <li><a href="master_medication.html">Medication</a></li>
                                <li><a href="teamformation.html">Care Team</a></li>
                                <li><a href="Physical_Examination.html">Physical Examination</a></li>
                                <li><a href="mastersbilling.html">Billing</a></li>

                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hospital Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="registration.html">Registration</a></li>
                                <li><a href="careplan.html">Care Plan</a></li>
                                <li><a href="vitals.html">Vitals</a></li>
                                <li><a href="medications.html">Medications</a></li>
                                <li><a href="teamscheduling.html">Team Scheduling </a></li>
                                <li><a href="fasttrackbilling.html">Fast Track Billing </a></li>
                                <li><a href="billing_module.html">Billing </a></li>
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="registration.html">Registration</a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Appointments<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="appointment.html">Appointment</a></li>
                                <li><a href="appointmentDashboardConsolidated.html">Appointment Dashboard</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </li>
						
						 <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Doctors<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="doc_appointment.html">Appointment</a></li>
                                <li><a href="doctorsdashboard.html">Dashboard</a></li>
                                <li><a href="asoap-icd.html">ICD </a></li>
                                <li><a href="medinfo.html">Medication Information</a></li>
                                <li><a href="medstat.html">Vital History</a></li>
                                <li><a href="medicationhistory.html">Medication History</a></li>
                                <li><a href="patienthistoryandvitals.html">Vitals and History</a></li>
                            </ul>
                        </li>


                        <li><a href="News.html">Contact Us</a></li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="" class="pull-right">Logout</a></li>
                    </ul>
                </div>
            </div>
            <!-- /.container-fluid -->
        </nav>
          </header>
        
 <div class="container-fluid">
 
 					<!--Modal Popup section for Searching of Referrals-->
 <div class="modal referralSearch" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Search Referral</h4>
      </div>
      
      <div class="modal-body">
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listRef">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                           <table id="referralList" class="table  table-bordered table-hover borderpanel"> 
                            <thead >
                                <tr>
                                	<th class="text-center">Referral Type</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Branch</th>
                                    <th class="text-center">mobileNumber</th>
                                    <th class="text-center">Email ID</th>
							        <th class="text-center">Active</th>
							        <th style="width:0px">Referral ID</th>
							        <th class="text-center">Select</th>
							        
							       	
                                </tr>
                             </thead>
                             <tbody>
                            <c:forEach var="ref" items="${referrals}" varStatus="status">
							
								<tr>
									<td class="text-center caps">${ref.categoryType}</td>
									<td class="text-center caps">${ref.categoryName}</td>
									<td class="text-center caps">${ref.categoryBranch}</td>
									<td class="text-center caps">${ref.mobileNumber}</td>
									<td class="text-center caps">${ref.categoryEmailID1}</td>
									<td class="text-center caps">${ref.isActive}</td>
									<td style="width:0px" class="text-center caps">${ref.categoryId}</td>
									<td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="selectReferral" style="color:#006699" data-toggle="tooltip" title="Select"></i></td>					
									
								 </tr>
							  </c:forEach>
                             </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                  </div>                        
          
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
            
 <!--Modal Popup section for Searching of patients-->
 <div class="modal patientSearch" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Search Patient</h4>
      </div>
      
      <div class="modal-body">
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                           <table id="patientsList" class="table  table-bordered table-hover borderpanel"> 
                            <thead >
                                <tr>
                                	<th class="text-center">Id</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">DOB</th>
                                    <th class="text-center">Age</th>
                                    <th class="text-center">Gender</th>
							        <th class="text-center">Contact</th>
							        <th class="text-center">Email Id</th>
							        <th class="text-center">City</th>
							       	<th class="text-center">Select</th>
                                </tr>
                             </thead>
                             <tbody>
                            <c:forEach var="pat" items="${patients}" varStatus="status">
							
								<tr>
									<td class="text-center caps">${pat.patientId}</td>
									<td class="text-center caps">${pat.firstName} ${pat.middleName} ${pat.lastName}</td>
									<td class="text-center caps">${pat.dateOfBirth}</td>
									<td class="text-center caps">${pat.age}</td>
									<td class="text-center caps">${pat.gender}</td>
									<td class="text-center caps">${pat.mobileNumber1}</td>
									<td class="text-center caps">${pat.emailId1}</td>
									<td class="text-center caps">${pat.currentAddress.city}</td>
									<td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="selectP" style="color:#006699" data-toggle="tooltip" title="Select"></i></td>					
									
								 </tr>
							  </c:forEach>
                             </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                  </div>                        
          
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
            
<!--Modal Popup section for Revisiting-->
 <div class="modal visitHistory" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Search Patient</h4>
      </div>
      
      <div class="modal-body">
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listHistory">
               <div class=" table-responsive begin-top">
                           <table id="HistoryList" class="table  table-bordered table-hover borderpanel"> 
                            <thead >
                                <tr>
                                	<th class="text-center">Id</th>
                                    <th class="text-center">Name</th>
         							<th class="text-center">Dates</th>							        
							        <th class="text-center">Doctor Visited</th>
							        <th class="text-center">Treated For</th>
							        <th class="text-center">Remarks</th>
							       	<th class="text-center">Select</th>
                                </tr>
                             </thead>
                             <tbody>
                             <c:forEach var="pat" items="${patients}" varStatus="status">
							
									<tr>
										<td class="text-center caps">${pat.patientId}</td>
										<td class="text-center caps">${pat.patientTitle} ${pat.firstName}</td>
										<td class="text-center caps">${pat.middleName}</td>
										<td class="text-center caps">${pat.lastName}</td>
										<td class="text-center caps">${pat.mobileNumber1}</td>
										<td class="text-center caps">${pat.emailId1}</td>
										<td class="text-center" data-dismiss="modal"><i class="glyphicon glyphicon-check" id="select" style="color:#006699" data-toggle="tooltip" title="Select"></i></td>					
									</tr>
							</c:forEach>
                           </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>                        
          
          
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
      
    </div><!-- /.modal-content -->
    
  </div><!-- /.modal-dialog -->
   
</div><!-- /.modal -->
            
            
            <div class="row">
            <div class="col-md-3 col-sm-12">
            <div class="panel panel-primary borderPanel">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Side Pannel</strong></h2>
                        </div>
                        <div class="panel-body">
                            <div class="form-group-sm">
                            <div class="row border_template">
                            Navigation icons
                            </div>
                            <!-- <div class="row">
                                <div class="col-md-5 col-sm-5 pull-right">
                               		<input type="button" class="form-control input-sm btn-info margintop" value="Search" data-toggle="modal" data-target=".patientSearch">
                            	</div>
                            </div> -->
                            
                        <div class="row">
                            <div class="col-sm-12 col-md-12">
                    			<label class="control-label" for="type">Select Type :</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                    			<label class="radio-inline">
                        			<input type="radio"  name="appnt_type" id="walkIn" value="Walk-In">Walk-In
                    			</label>
                    			<label class="radio-inline">
                        			<input type="radio" name="appnt_type" id="onCallradio" value="Oncall">On-Call
                   				</label>
                   				<label class="radio-inline">
                        			<input type="radio" name="appnt_type" id="onReferral" value="Referral" >Referral
                   				</label>
                   				
                           	</div> 
                        </div>
                        
                            <div class=row>
                                <div Class="col-sm-12 col-md-12">
                                    <h5 class="panel-heading panel-default"><strong>Patient Details</strong></h5>
                                </div>
                            </div>
                            <div class="row">
                        		<div class="col-md-12 col-sm-3" style="display: none;" id="referredBy">
                                    <label>Referred By</label>
                                    <button class="btn btn-info pull-right btn-sm"><span class="glyphicon glyphicon-search" data-toggle="modal" data-target=".referralSearch"></span></button>
                            		<input type="text" class="form-control input-sm" name="referredBy">
                            		<input type="hidden" class="form-control input-sm" name="referralId" id="referralId">
                                </div>
           					</div>
           					
                            <div class="row">
                                <div class="col-md-12 col-sm-3">
                                	<label>Patient Id:</label> 
                                	<button id="removePatientDetails" class="btn btn-info pull-right btn-sm"><span class="glyphicon glyphicon-refresh" data-toggle="modal"></span></button> 
                                	<button class="btn btn-info pull-right btn-sm"><span class="glyphicon glyphicon-search" data-toggle="modal" data-target=".patientSearch"></span></button>
                                 	<input type="text" class="form-control input-sm" name="patientId">
                                </div>                           
                                <div class="col-md-12 col-sm-3">
                                	<label>First Name:</label>                                    
                                    <input type="text" class="form-control input-sm" name="patientName">
                                </div>
                                <!-- <div class="col-md-6 col-sm-3">
                                <label>Middle Name:</label>                                    
                                       <input type="text" class="form-control input-sm">
                                    </div>
                                <div class="col-md-6 col-sm-3">
                                <label>Last Name:</label>                                    
                                       <input type="text" class="form-control input-sm">
                                    </div> -->
                            </div>
                        <div class="row">
                                <div class="col-md-6 col-sm-3">
                                		<label>DOB:</label>                                    
                                        <input type="text" class="form-control input-sm" name="dateOfBirth">
                                </div>                    
                            
                                <div class="col-md-6 col-sm-3">
                                <label>Age:</label>
                                    <input type="text" class="form-control input-sm" name="age">
                                    </div>
                            <div class="col-sm-6 col-md-12 ">
                    				<label class="control-label" for="gender">Gender :</label> 
                    			<div class="col-sm-12">
                    				<label class="radio-inline">
                        				<input type="radio" name="patient_gender" value="M">Male
                    				</label>
                    				<label class="radio-inline">
                        				<input type="radio" name="patient_gender" value="F">Female
                    				</label>
				                    <label class="radio-inline">
				                        <input type="radio" name="patient_gender" value="O">Others
				                    </label>
                    			</div>
               				</div>
                         </div>
                            <div class="row">                                
                                <div class="col-md-6 col-sm-3">
                                <label>Contact</label>                                    
                                      <input type="text" class="form-control input-sm" name="mobileNumber1">
                                    </div>
                           
                                <div class="col-md-6 col-sm-3">
                                    <label>Email:</label>
                                	<input type="text" class="form-control input-sm" name="emailId1">
                                </div>
                                <div class="col-md-6 col-sm-3 margintop">
                                    <input type="submit" value="Register" id="registerP"  class="form-control input-sm btn-success ">
                                </div>
                            </div>
                            
                                <div id="lastVisit">
                                    <div class=row>
                                <div Class="col-sm-12 col-md-12">
                                    <h5 class="panel-heading panel-default"><strong>Last Visit</strong></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 col-md-6">
                                    <label>Date</label>
                                    <input type="text" class="form-control input-sm">
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <label>Plan</label>
                                    <input type="text" class="form-control input-sm">
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <label>Doctor visited</label>
                                    <input type="text" class="form-control input-sm">
                                </div>
                                <div class="col-sm-3 col-md-6">
                                    <label>Team</label>
                                    <input type="text" class="form-control input-sm">
                                </div>
                                     
                            </div>
                                <div class="row">
                                    <div class="col-sm-6 col-md-12">
                                        <label>Treated For</label>
                                        <textarea class="form-control input-sm" rows="2"></textarea>                                    
                                    </div>
                                    <div class="col-sm-6 col-md-12">
                                        <label>Remarks</label>
                                        <textarea name="demo" class="form-control input-sm" rows="2"></textarea>                                    
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 margintop"><a href="" class=" pull-right" data-toggle="modal" data-target=".visitHistory">All prvious visits</a></div>
                                </div>    
                                </div>
                </div>
                </div>
                </div>
                </div>
            <div class="col-md-9 col-sm-12">
            <div class="panel panel-primary borderPanel">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Appointment Dashboard  </strong></h2>
                        </div>
                        <div class="panel-body">
                        			                      
                       <f:form modelAttribute="doctor">
                            <div class="row">
                                <div class="form-group-sm">
                                    <div class="col-sm-5 col-md-4">
                                        <f:select id="filterSelect" class="input-sm form-control" path="department">
                                        	<f:option value="">Select Department</f:option>
                                        	<f:options items="${departmentNames}"/>
                                        </f:select>
                                    </div>
                                </div>
                            </div>
                       </f:form>
                       <div class="row">
                           <div class="col-sm-12">
                           	<table id="DoctorApplist" class="table  table-bordered borderpanel"> 
                           		<thead >
                                <tr>
                                	
                                    <th class="text-center">Name</th>
                                    <th class="text-center mon" id="day1"></th>
                                    <th class="text-center tue"></th>
                                   	<th class="text-center wed"></th>
                                    <th class="text-center thu"></th>
                                    <th class="text-center fri"></th>
                                    <th class="text-center sat"></th>
                                    <th class="text-center sun"></th>
							       
                                </tr>
                             	</thead>
                             
                      <tbody>
                      <c:forEach items="${doctors}" var="doc">
                        <tr>
                        	<td class="widthName"><span class='docName'>Dr. ${doc.firstName} ${doc.middleName } ${doc.lastName }</span>,&nbsp;<span class='docQualification'>${doc.age}</span><br><span class='docDetails'>${doc.department},</span>
                        	<span>${doc.mobileNumber1}</span>
                        	</td>
                        			
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Mon')}">
									<span class="form-control input-sm spanSize" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Tue')}">
									<span class="form-control input-sm" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								<c:otherwise><span></span></c:otherwise>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Wed')}">
									<span class="form-control input-sm" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Thu')}">
									<span class="form-control input-sm" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Fri')}">
									<span class="form-control input-sm" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Sat')}">
									<span class="form-control input-sm" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>
							<td class="daysWidth text-center caps">
								<c:forEach var="cp" items="${doc.shifts}" varStatus="status">
								<c:forEach var="day" items="${cp.workingDays}">
								<c:choose>
								<c:when test="${day.equals('Sun')}">
									<span class="form-control input-sm spanSize" onclick="">${cp.fromTime} - ${cp.toTime}</span>											
								</c:when>
								</c:choose></c:forEach></c:forEach>
							</td>								
						</tr>				
                    </c:forEach>
                    </tbody>
                    </table>               
                                  
                                </div>
                            </div>
                            
                             <div class="row">
                    
                <div class="row col-sm-12 col-md-12 margin_div">
                    <div class="col-sm-8 col-md-8 col-xs-6"></div>
                    <div class="col-sm-2 col-md-2 col-xs-3">
                         <input type="button" class="form-control btn-sm btn-primary" id="previousbtn" value="Previous">
                    </div>
                    <div class="col-sm-2 col-md-2 col-xs-3">
                        <input type="button" class="form-control btn-sm btn-primary" id="nextbtn" value=" Next">
                    </div>
                </div>
                
            </div>
          </div>
        </div>
       </div>
     </div>
       
   </div>
    
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/date.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/moment.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/fullcalendar.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-tab.js"/>'></script>
    
    
    <script>
    
        var lowerdays;       
        var thDays=["Mon","Tue","Wed","Thu","Fri","Sat","Sun"];
        var count=0;
        var newDate;
        var prevCount=0;
        var htmlgen="";
        var htmlphy="";
        var htmlcty="";        
        var doc;
        var dateCount=0
        var dateString = ""; // date string
        var actualDate = new Date(); // convert to actual date
        var weekdays = new Array(7);
            weekdays[0] = "Sunday";
            weekdays[1] = "Monday";
            weekdays[2] = "Tuesday";
            weekdays[3] = "Wednesday";
            weekdays[4] = "Thursday";
            weekdays[5] = "Friday";
            weekdays[6] = "Saturday";
           
            
           $(document).ready(function() {
        	   $('#removePatientDetails').hide();
        	   $('input[type="radio"]').click(function() {
        		  if($(this).attr('id') == 'onReferral') {
        	            $('#referredBy').show();  
        	            console.log("clicked");
        	       }
        	       else {
        	            $('#referredBy').hide();
        	          	console.log("unchecked..");
        	       }
        	   });
        	  var resp=${jsonData}
        	  $.each(resp, function(key, value){
        		  
        		  console.log("FirstName in JS : "+value.firstName);
             	  console.log("Middle Name in JS : "+value.middleName);
             	  console.log("Time Form:: "+value.shifts[0].fromTime);
             	 	
        	  });
         	  
        	 $("#onSubscription").click(function(){ 
                $("#register").hide();
                  });
           
        	 $("#onCallradio").click(function(){  
                $("#register").show();
                
            });
            
            $("#referralList").DataTable();
            var referralTable = $('#referralList').DataTable();
           	referralTable.column( 6 ).visible( false );
           	referralTable.sWidth("0px");
           //	referralTable.rows[6].style.display = "none";           	
            
            $('#referralList tbody').on( 'click', 'tr', function () {
          	console.log("dataInTable "+referralTable);
            	var data=referralTable.row( this ).data();
            	console.log("Data "+data);
            	$('[name="referredBy"]').val(data[1]);
            	$('[name="referralId"]').val(data[6]);
            	console.log($('#referralId').val());
            	/* $('[name="patientName"]').val(data[1]);
            	$('[name="dateOfBirth"]').val(data[2]);
            	$('[name="age"]').val(data[3]);
            	var name="patient_gender";
            	var selectedValue=data[4];
            	$('[name="' + name+ '"][value="' + selectedValue + '"]').prop('checked', true);
            	$('[name="mobileNumber1"]').val(data[5]);
            	$('[name="emailId1"]').val(data[6]);
            	$('[name="patient_gender"][value="data[4]"]').prop('checked', true); */
            	
           } ); 
            
            
              $("#patientsList").DataTable();
              var patientTable = $('#patientsList').DataTable();
              $('#patientsList tbody').on( 'click', 'tr', function () {
            	console.log("dataInTable "+patientTable);
              	var data=patientTable.row( this ).data();
              	console.log("Data "+data);
              	$('[name="patientId"]').val(data[0]);
              	$('[name="patientName"]').val(data[1]);
              	$('[name="dateOfBirth"]').val(data[2]);
              	$('[name="age"]').val(data[3]);
              	var name="patient_gender";
              	var selectedValue=data[4];
              	$('[name="' + name+ '"][value="' + selectedValue + '"]').prop('checked', true);
              	$('[name="mobileNumber1"]').val(data[5]);
              	$('[name="emailId1"]').val(data[6]);
              	$('[name="patient_gender"][value="data[4]"]').prop('checked', true);
              	$('#removePatientDetails').show();
              	$('#registerP').hide();
             } );
              
              $('#removePatientDetails').click(function(){
            	  console.log("Removing details.");
            	 	$('[name="patientId"]').val('');
              		$('[name="patientName"]').val('');
              		$('[name="dateOfBirth"]').val('');
              		$('[name="age"]').val('').val('');
              		$('[name="patient_gender"]').val('').prop('checked',false);
              		$('[name="mobileNumber1"]').val('');
              		$('[name="emailId1"]').val('');
              		$('#removePatientDetails').show();
              		$('#registerP').show();
            	  
              });
           
              
              $("#HistoryList").DataTable();
             var table= $("#DoctorApplist").DataTable({
                 'sDom': 't' ,
                 "ordering": false
                 
             });
               $('#filterSelect').change(function() {
						table.search(this.value)
                                .draw();
					});
              
               
               $('[data-toggle="tooltip"]').tooltip();
     
               $("#previousbtn").click(function(){
                   count=0;
                     dateCount=0; 
                     newDate= new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()-7);
                     actualDate=newDate;
                     console.log(newDate);
                     for(var i =1;i<thDays.length+1;i++){                
                    // console.log(thDays[count]);
                   newDate  = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date
                         
       var day_Index= newDate.getDay();
        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = weekdays[day_Index]+'<br> ' + ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                 //console.log(newDateString);  
                     console.log(day_Index);   
                    $("#DoctorApplist th:eq("+i+")").empty().append(newDateString);
               
                         
                        count++;
                        dateCount++;
                }
                   
        });
                
                 $("#nextbtn").click(function(){
                    count=0;
                     dateCount=0; 
                     newDate= new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+7);
                     actualDate=newDate;
                     console.log(newDate);
                     for(var i =1;i<thDays.length+1;i++){                
                    // console.log(thDays[count]);
                   newDate  = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date
                         
        var day_Index= newDate.getDay();
        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = weekdays[day_Index]+'<br> ' + ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                 //console.log(newDateString);  
                         
                       
                    $("#DoctorApplist th:eq("+i+")").empty().append(newDateString);
                        count++;
                        dateCount++;
                }
                    
                   
        });
                DateandTh(actualDate);
                
});
           
           
        function DateandTh(actualDate){
            console.log("this is first time actualDate"+actualDate);
            for(var i =1;i<thDays.length+1;i++){
                    // console.log(thDays);
                    // console.log(thDays[count]);
                   newDate = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date
                        console.log("this is current date"+newDate);
                        var day_Index= newDate.getDay();
        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = weekdays[day_Index]+'<br> ' + ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                console.log("date string is"+newDateString);
                    //htmlgen +="<th id='"+thDays[count]+"gen' class='daysWidth'>"+newDateString+"</th>";// 
                
                    $("#DoctorApplist th:eq("+i+")").append(newDateString);
                
                    count++;
                    dateCount++;
                }
          
        };
            
  
        
         $('ul.nav li.dropdown').hover(function () {

            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
       
    
    </script>
  
    </body>
</html>

    