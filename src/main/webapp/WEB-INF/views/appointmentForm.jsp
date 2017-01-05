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
                                <li><a href="#"></a>
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
            <button class="btn btn-info pull-right btn-sm" data-toggle="modal" data-target=".newReferral" data-dismiss="modal"><span class="glyphicon glyphicon-plus-sign" ></span></button>
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                           <table id="referralList" class="table  table-bordered table-hover borderpanel"> 
                            <thead >
                                <tr>
                                	<th class="text-center">Referral Type</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Branch</th>
                                    <th class="text-center">mobileNumber</th>
                                    <th class="text-center">Email ID</th>
							        <!-- <th class="text-center">Active</th> -->
							        <th class="text-center">Referral ID</th>
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
									<%-- <td class="text-center caps">${ref.isActive}</td> --%>
									<td class="text-center caps">${ref.categoryId}</td>
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

 <!--Modal Popup section for Creating New Referrals-->
<div class="modal newReferral" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">New Referral</h4>
      </div>
      
      <div class="modal-body">
          <div class="row">
          <div class="tab-content">
          <div class="col-sm-12 col-md-12 table-responsive begin-top">
          <f:form class="form-horizontal categoryFields1" id="referral" modelAttribute="category">
         	<div class="row margin_div">
            <div class="col-sm-3 col-md-2">
            <label class="control-label">Select Category</label>
            </div>
             <div class="col-sm-5 col-md-4">
             
             <f:select class="form-control input-sm field_color caps" name="categoryType" path="categoryType">
             	<f:option value="">---Select One--- </f:option>
             	<f:options items="${types}"/>
             </f:select>
           	</div>
                <div id="referralSaved" style="color: green; font-size:20px"></div>
         	</div>
            
            <div class="col-sm-12 col-md-12">
                  <f:hidden path="categoryId"/>
                    <div class="row">
                    <div class="col-md-2 col-sm-3">
                        <label class="control-label">Name:</label>
                    </div>
                        <div class="col-md-3 col-sm-4">
                            <f:input type="text" class="form-control input-sm field_color caps" name="categoryName" path="categoryName" placeholder="Name"/>
                        </div>
                        <div class="col-md-3 col-sm-4">                    
                            <f:input type="text"  class="form-control input-sm field_color caps" name="categoryBranch" path="categoryBranch" placeholder="Branch"/>
                        </div>
                    </div> 
                    
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label">Contact No :</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" path="mobileNumber" placeholder="Mobile Number"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" path="landlineNumber" placeholder="Landline Number"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> E-mail Id:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" class="form-control input-sm field_color" path="categoryEmailID1" placeholder="E-mail Id"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" class="form-control input-sm field_color" path="categoryEmailID2" placeholder="E-mail Id"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> Address:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:textarea class="form-control input-sm field_color caps" rows="3"  path="categoryAddress.address" placeholder="Address"/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                         <f:input type="text" class="form-control input-sm field_color" path="companyWebsite" placeholder="Company's Website"/>
                        <f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.landmark" placeholder="*Landmark"/>                 
                    </div>
                    </div>
                      
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label"> City/State:</label></div>
                    <div class="col-md-3 col-sm-4">
                       <f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.city" placeholder="City/District."/>
                    </div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="text" path="categoryAddress.state" class="form-control input-sm field_color caps" placeholder="State"/>
                    </div>
                    </div>
                <div class="row">
                <div class="col-md-2 col-sm-3">
                    <label class="control-label">Country:</label></div>
                          <div class="col-md-3 col-sm-4">                          
                        	<f:input type="text" class="form-control input-sm field_color caps" path="categoryAddress.country" placeholder="Country"/>
                          </div>
                      </div>
                <div class="row">        
                <div class="col-md-2 col-sm-3">        
                    <label class="control-label"> Pin Code:</label></div>
                    <div class="col-md-3 col-sm-4">
                        <f:input type="number" class="form-control input-sm field_color" onFocus="geolocate()" path="categoryAddress.pincode" placeholder="Pin code"/>
                    </div>
                     <div class="col-md-1 col-sm-1 ">
                     <input type="button" class="btn btn-primary btn-sm  height_margin" data-dismiss="modal" name="CANCEL" value="Cancel">
                     </div>
                     <div class="col-md-1 col-sm-1 ">
                     <input type="button" class="btn btn-primary btn-sm  height_margin" data-dismiss="modal" name="SAVE" value="Submit" id="saveReferral">
                     </div>                    
                     
                </div>
 
               </div>
       
             </f:form>       
               </div>
             </div>
         </div>                        
          
        </div>
        
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--Modal Popup section to Edit the Doctor shift Timings-->
<div class="modal editDoctorShifts" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <!-- <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Shift Timings</h4>
      </div> -->
      
      <div class="modal-body">
          <div class="row">
          <div class="tab-content">
          <div class="col-sm-12 col-md-12 table-responsive begin-top">
          
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <f:form modelAttribute="doctor">
                    
          <h3 class="panel-heading panel-default"><strong>Shift Timings</strong></h3>
            <div class="row">
            <div id="editedShifts" style="color: green; font-size:20px;" class="text-center"></div>
                <div class="form-group-sm">
                <div class="col-sm-12">
                <div class="">
                <table class="table table-bordered table-hover" id="shiftsTable">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 300px">Working Date</th>
                            <th class="text-center" >Session</th>
                            <th class="text-center" >Strict Session</th>
                            <th class="text-center" ></th>
                        </tr>
                    </thead>
	                   <tbody id="shiftsBody">
	                   <c:if test="${fn:length(doctor.shifts) > 0}" >
	                   <tr>
	                   <td>
	                    <label>Select Days</label>
                    <f:select class="form-control input-sm selectPicker" path="shifts[0].workingDays" multiple="true">
                        <f:option value="Mon">Mon</f:option>
                        <f:option value="Tue">Tue</f:option>
                        <f:option value="Wed">Wed</f:option>
                        <f:option value="Thu">Thu</f:option>
                        <f:option value="Fri">Fri</f:option>
                        <f:option value="Sat">Sat</f:option>
                        <f:option value="Sun">Sun</f:option>
                    </f:select></td>
                    <td>
                    <div class="col-md-6">
                    <label>From Time</label>
                    
                <div class="input-group bootstrap-timepicker timepicker " >
                        <f:input  type="text" class="form-control input-sm " path="shifts[0].fromTime"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                <div class=col-md-6>
                <label>To Time</label>
                   <div class="input-group bootstrap-timepicker timepicker ">
                    	<f:input  type="text" class="form-control input-sm " path="shifts[0].toTime"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                    </td>
                    <td class="text-center">
                    <div class="form-group-sm">
                    	<label></label>
                    	<div class="text-center"><f:checkbox path="shifts[0].strictSession"  /></div>
                    </div>
                    </td>
                    
                     <td><div id="glyph" class="topmargin">
                        <label></label>
                         <span class="glyphicon glyphicon-plus glyph_size" id="add" aria-hidden="true"></span>
                    </div></td>
                                          
                        </tr>
                        </c:if>
                        <tr  class="clone hide" id="cloneObject">
                        
                        <td>
                        <label>Select Days</label>
                    <f:select class="form-control input-sm selectPicker" disabled="disabled" path="clone.select" multiple="true">
                        <f:option value="Mon">Mon</f:option>
                        <f:option value="Tue">Tue</f:option>
                        <f:option value="Wed">Wed</f:option>
                        <f:option value="Thu">Thu</f:option>
                        <f:option value="Fri">Fri</f:option>
                        <f:option value="Sat">Sat</f:option>
                        <f:option value="Sun">Sun</f:option>
                    </f:select></td>
                    <td>
                    <div class="col-md-6">
                    <label>From Time</label>
                    
                <div class="input-group bootstrap-timepicker timepicker " >
                        <f:input  type="text" class="form-control input-sm " disabled="disabled" path="clone.from"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                <div class=col-md-6>
                <label>To Time</label>
                   <div class="input-group bootstrap-timepicker timepicker ">
                        <f:input  type="text" class="form-control input-sm " disabled="disabled" path="clone.to"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                    </td>
                    <td class="text-center">
                    <div class="form-group-sm">
                    	<label></label>
                    	<div class="text-center"><f:checkbox disabled="disabled" path="clone.strict"  /></div>
                    </div>
                    </td>
                    
                     <td><div id="glyph" class="topmargin">
                        <label></label>
                         <span class="glyphicon glyphicon-plus glyph_size" id="add"  aria-hidden="true"></span>
                    </div></td>
                                          
                    </tr>
                    <c:forEach items="${doctor.shifts}" varStatus="x" begin="1">
                    <tr>
                    <td>
                    <label>Select Days</label>
                    
                    <f:select class="form-control input-sm selectPicker" path="shifts[${x.index}].workingDays" multiple="true">
                        <f:option value="Mon">Mon</f:option>
                        <f:option value="Tue">Tue</f:option>
                        <f:option value="Wed">Wed</f:option>
                        <f:option value="Thu">Thu</f:option>
                        <f:option value="Fri">Fri</f:option>
                        <f:option value="Sat">Sat</f:option>
                        <f:option value="Sun">Sun</f:option>
                    </f:select></td>
                    <td>
                    <div class="col-md-6">
                    <label>From Time</label>
                    
                <div class="input-group bootstrap-timepicker timepicker " id="Shift1FtimePicker" >
                        <f:input  type="text" class="form-control input-sm " path="shifts[${x.index}].fromTime"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                <div class=col-md-6>
                <label>To Time</label>
                   <div class="input-group bootstrap-timepicker timepicker " id="Shift1TtimePicker" >
                        <f:input  type="text" class="form-control input-sm " path="shifts[${x.index}].toTime"/>
                    <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                </div>
                </div>
                    </td>
                    <td class="text-center">
                    <div class="form-group-sm">
                    	<label></label>
                    	<div class="text-center"><f:checkbox path="shifts[${x.index}].strictSession"  /></div>
                    </div>
                    </td>
                    
                     <td><div id="glyph" class="topmargin">
                        <label></label>
                         <span class='glyphicon glyphicon-minus glyph_size' OnClick="$(this).parent().parent().parent().remove()"  aria-hidden='true'></span>
                    </div></td>
                     </tr> 
                     
                  </c:forEach> 
                  </tbody>
                  </table>
                </div>
                </div>
                            </div>
             </div>
             </f:form>
               </div>
             </div>
         </div>                        
          
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
            <div class="col-sm-12 col-md-12  height_margin" id="listOfPatients">
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
                                <button class="btn btn-info pull-right btn-sm" data-toggle="modal" data-target=".referralSearch"><span class="glyphicon glyphicon-search"></span></button>
                        		<input type="text" class="form-control input-sm" name="referralName" id="referralName">
                        		<input type="hidden" class="form-control input-sm" name="referralId" id="referralId">
                            </div>
       					</div>
           					
                       <div class="row">
                           <div class="col-md-12 col-sm-3">
                           	<label>Patient Id:</label> 
                           	<button id="refreshPatientData" class="btn btn-info pull-right btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-refresh" ></span></button> 
                           	<button class="btn btn-info pull-right btn-sm" data-toggle="modal" data-target=".patientSearch"><span class="glyphicon glyphicon-search"></span></button>
                           	<input type="text" class="form-control input-sm" name="patientId" id="patientId" readonly="readonly">
                       </div>                           
                       <div class="col-md-12 col-sm-3">
                       	<label>First Name:</label>                                    
                           <input type="text" class="form-control input-sm" name="patientName" id="firstName">
                       </div>
                                
                        </div>
                        <div class="row">
                        <div class="col-md-6 col-sm-3">
                        	<label>DOB:</label>                                    
                            <input type="text" class="form-control input-sm" name="dateOfBirth" id="dateOfBirth">
                        </div>                    
                    
                        <div class="col-md-6 col-sm-3">
                        <label>Age:</label>
                        <input type="text" class="form-control input-sm" name="age" id="age">
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
                                      <input type="text" class="form-control input-sm" name="mobileNumber1" id="mobileNumber1">
                                    </div>
                           
                                <div class="col-md-6 col-sm-3">
                                    <label>Email:</label>
                                	<input type="text" class="form-control input-sm" name="emailId1" id="emailId1">
                                </div>
                                <div class="col-md-6 col-sm-3 margintop">
                                    <input type="button" value="Register" id="registerP" onclick="registerPatient()"  class="form-control input-sm btn-success ">
                                    
                                </div>
                            </div>
                            <div id="info" style="color: green;"></div>
                           
                                <div id="lastVisit">
                                    <div class=row>
                                <div Class="col-sm-12 col-md-12">
                                    <h5 class="panel-heading panel-default"><strong>Last Visit</strong></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 col-md-6">
                                    <label>Date</label>
                                    <input type="text" class="form-control input-sm" name="lastVisitDate">
                                </div>
                               	<div class="col-sm-3 col-md-6">
                                    <label>Department</label>
                                    <input type="text" class="form-control input-sm" name="lastVisitDepartment">
                                </div>
                                <div class="col-sm-3 col-md-12">
                                    <label>Doctor visited</label>
                                    <input type="text" class="form-control input-sm" name="lastVisitDoctor">
                                </div>
                                <!-- <div class="col-sm-3 col-md-6">
                                    <label>Team</label>
                                    <input type="text" class="form-control input-sm">
                                </div> -->
                                     
                            </div>
                                <div class="row">
                                    <div class="col-sm-6 col-md-12">
                                        <label>Treated For</label>
                                        <textarea class="form-control input-sm" rows="2" name="lastVisitedFor"></textarea>                                    
                                    </div>
                                    <div class="col-sm-6 col-md-12">
                                        <label>Remarks</label>
                                        <textarea name="demo" class="form-control input-sm" rows="2" name="lastVisitRemarks"></textarea>                                    
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
                            <h2 class="panel-title text-center"><strong>Appointment Dashboard  </strong> <button type="button" class="btn btn-success pull-right" id="backButton">Back</button></h2>
                        </div>
                        <div class="panel-body" id="dashboard">
                            <f:form modelAttribute="doctor">
                            <div class="row">
                                <div class="form-group-sm">
                                    <div class="col-sm-5 col-md-4">
                                        <f:select id="filterSelect" class="input-sm form-control" path="department" >
                                        	<f:option value="">Select Department</f:option>
                                        	<f:options items="${departmentNames}"/>
                                        </f:select>
                                    </div>
                                </div>
                            </div>
                       		</f:form>
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="table-responsive">
                                    <table id="DoctorApplist" class="table  table-bordered borderpanel"></table>
                                    </div>
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
                        <div class="panel-body" id="appointment">
                            <div class="row form-group-sm" >
                                <div Class="col-sm-12 col-md-12">
                                    <h5 class="panel-heading panel-default"><strong>Book Appointment</strong></h5>
                                    
                                </div>
                            </div>
                            
            <div id="doctorsDiv">
            <div class="row">
                <div class="form-group-sm">
                    <div class="col-md-3 col-sm-4">
                        <label>Doctor's Name</label>
                        <input type="text" disabled class="form-control input-sm" id="docName">
                    </div>
                </div>
                 
                <div class="col-md-1"></div>
                <div class="col-md-3 col-sm-4">
                    <label class="" id="workingDays">Date</label>  <input type="text" disabled class="form-control input-sm" id="datefield">                   
                </div>
                
                <div class="col-md-2 col-sm-5">
                    <label id="workingTiming">Time From: </label> 
                    <input type="text" disabled class="form-control input-sm" id="timeFrom" value="04:00 pm"> 
                    </div>
                <div class="col-md-2 col-sm-5">
                    <label id="workingTiming">Time To: </label> 
                    <input type="text" disabled class="form-control input-sm" id="timeTo" value="06:00 pm"> 
                    <span id="setSlotTime"></span>                  
                </div>
                
                <!-- <div class="col-md-2 col-sm-4">
                    <label id="workingTiming">Timing: </label> 
                    <input type="text" disabled class="form-control input-sm"id=" " value="04:00 pm"> to <input type="text" disabled class="form-control input-sm"id="timeTo" value="06:00 pm">                   
                <span id="setSlotTime"></span>
                </div> -->
            
            </div>
            </div>
            <div class="row height_margin">
                <div class="col-sm-12 col-md-12 ">
                   
             <div class="row ">
                <div class="col-sm-12 col-md-12 ">
                   
            <div id='calendar'></div>

                </div>
            </div>
			           
            <div class="row buttons">
                <br/>
                <div class="col-sm-12 col-md-12 text-center">
                    <button class="btn btn-default button" id="save">Save</button>
                    <button class="btn btn-default button" id="reset">Reset</button>
                </div>
            </div>

    </div>
              
            </div>
            
     
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Select Time Slot</h4>
      </div>
      <div class="modal-body">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <div class="input-group">                    
                        <input type="radio" name="radiobtn" value="15" checked id="radio_one" >                    
                    <label class="control-label">15 min slot</label>
                </div>
            </div>
            <div class="col-md-3 col-sm-4">
                <div class="input-group">                    
                        <input type="radio" name="radiobtn" value="30"  id="radio_two">                    
                    <label class="control-label">30 min slot</label>
                </div>
            </div>
            <div class="col-md-3 col-sm-4">                                              
                     <input type="radio" name="radiobtn" value="45" id="radio_three" >                    
                    <label class="control-label">45 min slot</label>
                </div>
                <div class="col-sm-4 col-md-3">
                    <input type="radio" name="radiobtn" value="60" id="radio_four" >                    
                    <label class="control-label">1 hour slot</label>
            </div>
          </div>
          <div class="row">
            <div class="col-md-3 col-sm-5">
                <label class="control-label">Name:</label>
              </div>
              <div class="col-md-6 col-sm-9">
                 <label class="control-label" id="ptName"></label>
              </div>
          </div>
           <div class="row">
            <div class="col-md-3 col-sm-5">
                <label class="control-label">Age:</label>
              </div>
              <div class="col-md-4 col-sm-5">
              <label class="control-label" id="ptAge"></label>
              </div>
          </div>
           <div class="row">
            <div class="col-md-3 col-sm-5">
              <label class="control-label">Gender:</label>
              </div>
              <div class="col-md-4 col-sm-5">
              <label class="control-label" id="ptGender"></label>
              </div>
          </div>
           <div class="row">
            <div class="col-md-3 col-sm-5">
               <label class="control-label">Contact:</label>
              </div>
              <div class="col-md-4 col-sm-5">
              <label class="control-label" id="ptContact"></label>
              </div>
          </div>
           <div class="row">
            <div class="col-md-3 col-sm-5">
               <label class="control-label">Email:</label>
              </div>
              <div class="col-md-4 col-sm-5">
              <label class="control-label" id="ptEmailId"></label>
              </div>
          </div>
          <div class="row">
            <div class="col-md-4 col-sm-5">
               <label class="control-label">Appointment Type:</label>
             </div>
             <div class="col-md-4 col-sm-5">
              <label class="control-label" id="ptAppntType"></label>
             </div>
          </div>
           
      </div>
      <div class="modal-footer">
        
        <button type="button" id="goNext" class="btn btn-primary">Next</button>
      </div>
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
    <script type="text/javascript" src='<spring:url value="/resources/js/date.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/moment.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/fullcalendar.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-tab.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-datepicker.js"/>'></script>
    
  
    <script>
    	/* var docdetails=${jsonData}
	  	$.each(docdetails, function(key, value){
		  console.log("Doctor : "+docdetails);
		  console.log("FirstName in JS : "+value.firstName);  
     	  console.log("Middle Name in JS : "+value.middleName);
     	  console.log("Time Form:: "+value.shifts[0].fromTime);
     	 	
	  	}); */
	  
        var lowerdays;       
        var thDays=["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
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
        
        var tdClass;
        var tabledata;
        var match_timeFrom,match_timeTo,fcOpts;
        var startTime, endTime ;
        var setDate;
        var date1;
        var startDate;
        var timeF;
        var timeT;
        var slotDuration;
        
        var patientDetails=${jsonPatients};
        var docdetails=${jsonDoctors};
        var appointmentDetails=${jsonAppointments};
        var referralDetails=${jsonReferrals}
        console.log("Demo APPS:");    
        console.log(appointmentDetails);
       
           $(document).ready(function() {
        	   //*********Date picker and the auto Calculation of the age**********//
        	   $("#dateOfBirth").datepicker({
                   autoclose: true,        
                   format: 'mm/dd/yyyy',
                   endDate: new Date()
                  });
        	   $('[name="dateOfBirth"]').change(function() {   
                   $('[name="age"]').val(getAge(new Date($('[name="dateOfBirth"]').val())));
                });
              $('[name="age"]').change(function(){
            	  var todaysDate= new Date();//get todays date    	 
            	  var year= todaysDate.getFullYear(); //get the current date from date object   	      	  
            	  var subYear=$('[name="age"]').val();//get the value from age textbox.
            	  var fixDate=year-subYear;//subtract the age from current year.
            	   $('[name="dateOfBirth"]').val("01/01/"+fixDate);//set the date to date textbox.
              });

                 function getAge(birthDate) {
                 var now = new Date();
        			
                 function isLeap(year) {
                   return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
                 }

                 // days since the birthdate    
                 var days = Math.floor((now.getTime() - birthDate.getTime())/1000/60/60/24);
                 var age = 0;
                 // iterate the years
                 for (var y = birthDate.getFullYear(); y <= now.getFullYear(); y++){
                   var daysInYear = isLeap(y) ? 366 : 365;
                   if (days >= daysInYear){
                     days -= daysInYear;
                     age++;
                     // increment the age only if there are available enough days for the year.
                   }
                 }
                 return age;
               }
        	   
    }); 
             
           //***********Passing the New Referral Details to Save to the DB*************//
           $('input#saveReferral').on('click', function(e) {
        		   event.preventDefault();
        		   var ref=$( 'form#referral' ).serialize();
        		   console.log(ref );
        		   
        		   $.ajax({
          	          type: "POST",
          	          url: "/LoginMavenSpringMVC/appointment/saveReferral",
          	          data: ref,
          	          success: function(response){
          	          // we have the response
          	          	console.log("Result : "+response[0]);
          	          	$('#referralSaved').html(response[0]);
          	        	$('#referralId').val(response[1]);
          	        	$('#referralName').val(response[2]);
          	        	window.close();
          	          
          	          },
          	          error: function(e){
          	          alert('Error: ' + e);
          	          }
          	       });
        		   
        		 }); 
        	   
        	   
        	   		$('#refreshPatientData').hide();
                	$("#backButton").click(function(){
                    $("#appointment").hide();
                    $("#dashboard").show();
                    $("#backButton").hide();
                    
                });
                
                $('input[name="appnt_type"]').click(function() {
          		  if($(this).attr('id') == 'onReferral') {
          	            $('#referredBy').show();  
          	            console.log("clicked");
          	       }
          	       else {
          	            $('#referredBy').hide();
          	       }
          	   });
          	  
           
            var referralTable = $('#referralList').DataTable();
            
            $('#referralList tbody').on( 'click', 'tr', function () {
          	console.log("dataInTable "+referralTable);
            	var data=referralTable.row( this ).data();
            	console.log("Data "+data);
            	$('[name="referralName"]').val(data[1]);
            	$('[name="referralId"]').val(data[5]);
            	console.log($('#referralId').val());
            	
           } ); 
            
            //************Select a Patient from the Table and Show the details in the form***************//
            var patientTable = $('#patientsList').DataTable();
            $('#patientsList tbody').on( 'click', 'tr', function () {
          	console.log("dataInTable "+patientTable);
            	var data=patientTable.row( this ).data();
            	console.log("Data "+data);
            	console.log("G:: "+data[4]);
            	$('[name="patientId"]').val(data[0]);
            	$('[name="patientName"]').val(data[1]);
            	$('[name="dateOfBirth"]').val(data[2]);
            	$('[name="age"]').val(data[3]);
            	var name="patient_gender";
            	var selectedValue=data[4];
            	$('[name="' + name+ '"][value="' + selectedValue + '"]').prop('checked', true);
            	$('[name="mobileNumber1"]').val(data[5]);
            	$('[name="emailId1"]').val(data[6]);
            	$('#refreshPatientData').show();
            	$('#registerP').hide();
            	console.log("Getting Detail: "+$('#firstName').val());
            	$.ajax({
       	          type: "POST",
       	          url: "/LoginMavenSpringMVC/appointment/revisit",
       	          data: "patientId=" + data[0],
       	          success: function(response){
       	          	
       	          console.log("Showing the Revisit Details: "+response);
       	         	
       	          },
       	          error: function(e){
       	          alert('Error: ' + e);
       	          }
       	       });
           } );
            
            $('#refreshPatientData').click(function(){
          	  console.log("Removing details.");
          	 		$('[name="patientId"]').val('');
            		$('[name="patientName"]').val('');
            		$('[name="dateOfBirth"]').val('');
            		$('[name="age"]').val('').val('');
            		$('[name="patient_gender"]').val('').prop('checked',false);
            		$('[name="mobileNumber1"]').val('');
            		$('[name="emailId1"]').val('');
            		$('#refreshPatientData').hide();
            		$('#registerP').show();
          	  
            });
                
                  	   
             	$("#HistoryList").DataTable();
              
                $('#filterSelect').change(function() {
 						tabledata.search(this.value)
                                 .draw();
 					});
               
               $('[data-toggle="tooltip"]').tooltip();

               $("#previousbtn").click(function(){
                   prevWeek();                   
                   
               });
                
                 $("#nextbtn").click(function(){
                     nextWeek();
                 });                
               initAppCalendar();
               
               fcOpts = {
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'agendaDay'
                },
                
                defaultView:'agendaDay',
                slotLabelFormat:'hh:mm a',
                selectable: true,
                selectHelper: true,
                dayClick: changeView,
                editable: true,
                eventLimit: true,
                allDaySlot: false,// allow "more" link when too many events 
                
          }; 
              
           
           /*********************New Referral**************/
           
     	   function saveReferral(){
        	var ref=$( this ).serialize();
        	console.log("Checking..");
   		   	console.log(ref );
   		   
   		   $.ajax({
     	          type: "POST",
     	          url: "/LoginMavenSpringMVC/appointment/saveReferral",
     	          data: ref,
     	          success: function(response){
     	          // we have the response
     	          	console.log("Result : "+response[0]);
     	          	$('#referralSaved').html(response[0]);
     	        	$('#referralId').val(response[1]);
     	        	$('#referralName').val(response[2]);
     	        	window.close();
     	          
     	          },
     	          error: function(e){
     	          alert('Error: ' + e);
     	          }
     	       });   
        	   
           } 
        		   
          /********************* New Patient *******************/		   
          /*  function registerPatient(){
         	  var type=$('input[name="appnt_type"]:checked').val();
         	  var referralId=$('#referralId').val();
              var fullName=$('#firstName').val();    
      	      var dob = $('#dateOfBirth').val();
      	      var age = $('#age').val();
      	      var gender=$('input[name="patient_gender"]:checked').val();   
      	      var email = $('#emailId1').val();
      	      var contact = $('#mobileNumber1').val();
               var regStatus;
               if(type=="onCall"){
             	  regStatus="Not-Confirmed";
               }else{
             	  regStatus="Booked"
               }
     	     $.ajax({
      	          type: "POST",
      	          url: "/LoginMavenSpringMVC/appointment/savePatient",
      	          data: "patientType=" + type+ "&referralId=" + referralId +"&firstName=" + fullName + "&dateOfBirth=" + dob + "&age=" + age + "&gender=" + gender+ "&mobileNumber1=" + contact+ "&emailId1=" + email,
      	          success: function(response){
      	          // we have the response
      	          	$('#info').html(response[0]);
      	         	$('#patientId').val(response[1]);
      	         	$('#registerP').hide();
      	          },
      	          error: function(e){
      	          alert('Error: ' + e);
      	          }
      	       });
           
         } */
            
           
           /*****************Registering a New Patient Details**************/
           function registerPatient(){
        	  var type=$('input[name="appnt_type"]:checked').val();
        	  var referralId=$('#referralId').val();
           	  var fullName=$('#firstName').val();    
     	      var dob = $('#dateOfBirth').val();
     	      var age = $('#age').val();
     	      var gender=$('input[name="patient_gender"]:checked').val();   
     	      var email = $('#emailId1').val();
     	      var contact = $('#mobileNumber1').val();
              var regStatus;
              if(type=="Oncall"){
            	  regStatus="Not-Confirmed";
              }else{
            	  regStatus="Booked"
              }
    	     $.ajax({
     	          type: "POST",
     	          url: "/LoginMavenSpringMVC/appointment/savePatient",
     	          data: "patientType=" + type+ "&referralId=" + referralId +"&firstName=" + fullName + "&dateOfBirth=" + dob + "&age=" + age + "&gender=" + gender+ "&mobileNumber1=" + contact+ "&emailId1=" + email,
     	          success: function(response){
     	          // we have the response
     	          	$('#info').html(response[0]);
     	         	$('#patientId').val(response[1]);
     	         	$('#registerP').hide();
     	          },
     	          error: function(e){
     	          alert('Error: ' + e);
     	          }
     	       });
          
        }
           
           /********Getting the values to the pop-up box to book the Appointment******/
           var myArray = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'];
           
           	$("#goNext").click(function(){
           		console.log("Next button clicked..");
           	$("#myModal").modal('hide');
           	var pPatientId,pReferralName, pDoctorName, pReferralId, pFullName, pDateOfBirth, pAge, pGender, pMobileNumber, pEmailId, pAppointmentType, pSlotDuration,pDoctorId;
           	
           	pDoctorId=$("#doctorIdHidden").text();
           	console.log("value of doctorIdHidden ::"+pDoctorId);
           	pReferralId = $('[name=referralId]').val();
           	pReferralName=$('[name=referralName]').val();
           	pPatientId = $('[name=patientId]').val();
           	pFullName = $('[name="patientName"]').val();
            pDateOfBirth = $('[name=dateOfBirth]').val();
            pAge = $('[name=age]').val();
           	pDoctorName=$('#docName').val();	
            pGender = $('[name=patient_gender]').val();
            pMobileNumber = $('[name=mobileNumber1]').val();
            pEmailId = $('[name=emailId1]').val();
            pAppointmentType = $('[name="appnt_type"]:checked').val();
            pSlotDuration=$('input[name="radiobtn"]:checked').val(); 
            console.log("Slot Duration : "+pSlotDuration, pAppointmentType);
               var status;
               if(pAppointmentType=="Oncall"){
              	 status="Not Confirmed";
               }else{
              	 status="Booked";
               }
               
               if(pSlotDuration==15){
            	   console.log("Starting Time: "+startTime);
              	 endTime= startTime+900000;
              	 console.log("Ending Time: "+endTime);
               }
               else if(pSlotDuration==30){
              	 endTime= startTime+1800000;
               }
               else if(pSlotDuration==45){
              	 endTime= startTime+2700000;
               }
               else if(pSlotDuration==60){
              	 endTime= startTime+3600000;
               }
               
           var eventData;
           console.log("Events Full Name: "+pFullName);
               if (pFullName) {   
                 console.log("FullName "+pFullName);
                 eventData = {
                        
              		 title:"Doc Name: "+pDoctorName+",Referred By: "+pReferralName+",Patient Name: "+pFullName+",Date Of Birth: "+pDateOfBirth+",Age: "+pAge+",Gender: "+pGender+",Contact: "+pMobileNumber+
                     ",Email: "+pEmailId+",Appointment type: "+pAppointmentType,
                     backgroundColor: '#ff4d4d',                                 
                     start: startTime,
                   	 end: endTime,
                    
                   };
                    console.log("Event Data ::"+eventData.start);
					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
                   
					postEventData(pPatientId,pReferralId,pDoctorId,startTime,endTime,pAppointmentType,status); 
   			} 
               else{
            	   alert("Please Enter the Patient Details to book the appointment!");
               }
  	 	});
           
           	/*******Post the Appointment Details to the Controller********/
            function postEventData(pid,refid,dcId,sTime,eTime,pAppointmentType,status){
         	   
         	   console.log("value are passed Here ::"+pid+", "+refid+", "+sTime+", "+eTime);
         	   $.ajax({
                	type: "POST",
                	url:"/LoginMavenSpringMVC/appointment/save",
                	data: "patientId="+pid+ "&referralId="+refid+ "&doctorId="+dcId+ "&startTime="+sTime+ "&endTime="+eTime+ "&currentStatus="+status+ "&typeOfAppointment="+pAppointmentType,
                	success: function(response){
                		console.log("Success....."+response);
                		alert("Appointment has been booked successfully.")
                	},
                	error: function(e){
                		console.log("Failed......");
                	},
                	
                 });
            };
            
           	changeView =  function(date, jsevent, view){
            console.log(view.name);
            console.log("value of date is"+date);            
                     
               if (view.name == "agendaDay"){  
              	 
            	   if($('[name="patientName"]').val() != null ){
		    	  	$('#myModal').modal('toggle');
		           	startTime = date;
		           	$("#ptName").text($('[name="patientName"]').val());
		           	$("#ptAge").text($('[name="age"]').val());
		           	$("#ptGender").text($('[name="patient_gender"]').val());
		           	$("#ptContact").text($('[name="mobileNumber1"]').val());
		           	$("#ptEmailId").text($('[name="emailId1"]').val());
		           	$("#ptAppntType").text($('[name="appnt_type"]:checked').val());
		           	console.log("Start Date inside ChangeView Function: "+startTime);     
                  
            	   }else{
            		   alert("Please Enter the Patient Details.");
            	   }
                 }
              else if (view.name == "month"){
                          $('#calendar').fullCalendar('changeView', 'agendaDay');              
                          $('#calendar').fullCalendar('gotoDate',date);
                         	 
                      }
                   
              } ; 
             
              $.each(appointmentDetails, function(app,appValue){
              	
              	$.each(patientDetails, function(patients,patientValue){
                  	if(appValue.patientId==patientValue.patientId){
                  		appointmentDetails[app].patientInfo=patientValue;
                  	}
                  });
              	$.each(docdetails,function(doct, docValue){        		
              		if(appValue.docID==docValue.doctorId){
              			appointmentDetails[app].doctorInfo=docValue;
              		}
              	});
              	$.each(referralDetails,function(ref,referralValue){
              		if(appValue.reflId==referralValue.categoryId){
              			appointmentDetails[app].referralInfo=referralValue;
              		}
              	});
              	
              });
              
              /******Load all the Booked Appointments from the DB******/
              function loadPreviousAppointments(){
              	console.log(appointmentDetails);
              	$.each(appointmentDetails,function(appt,values){
                  	   var DocName= values.doctorInfo.firstName+" "+values.doctorInfo.middleName+" "+values.doctorInfo.lastName;
                  	   var title;
                  	   var refId=values.reflId;                	   
                  	   var referralName;
                  	   if(refId){
                  		   referralName= values.referralInfo.categoryName;                		   
                  	   }
                  	   var patientName=values.patientInfo.firstName+" "+values.patientInfo.middleName+" "+values.patientInfo.lastName;
                  	   var sTime=values.startTime;
                  	   var eTime=values.endTime;
                  	   var dob=moment(values.patientInfo.dateOfBirth).format("DD MM YYYY");
                  	   var age=values.patientInfo.age;
                  	   var gender=values.patientInfo.gender;
                  	   var contact= values.patientInfo.mobileNumber1;
                  	   var email= values.patientInfo.emailId1;
                  	   var appointmentType= values.typeOfAppointment;
                  	   var appointmentStatus=values.currentStatus;
                  	   console.log(appointmentStatus);
                  	   if(appointmentStatus=="not confirm"){
                  	   console.log(dob);
                  	   loadApttData = {                           
                                 title:"Doc Name: "+DocName+", Referred By: "+referralName+", Patient Name: "+patientName+"Date Of Birth:"+dob+"Age: "+age+"Gender: "+gender+", Contact: "+contact+
                                 "Eamil: "+email+"Appointment type: "+appointmentType,
                                   start: sTime,
                             	   end: eTime,
                             	   backgroundColor: '#ffdb4d',
                             };
                  	   $('#calendar').fullCalendar('renderEvent', loadApttData, true);
                  	 }if(appointmentStatus=="Booked"){
                  		 loadApttData = {                           
                                   title:"Doc Name: "+DocName+" Referred By: "+referralName+" Patient Name: "+patientName+"Date Of Birth: "+dob+",Age: "+age+",Gender: "+gender+",Contact: "+contact+
                                   "Email: "+email+"Appointment type: "+appointmentType,
                                   start: sTime,
                               	   end: eTime,
                               	   backgroundColor: '#ff6666',
                               };
                    	   $('#calendar').fullCalendar('renderEvent', loadApttData, true);
                  	 }
                  	   
                     }); 
              	
              };
                   
        /********Implementation of the calender *******/
        var viewStartDate = moment();
        var viewEndDate= moment();
        var curDate= moment();
        var $appTable;
        var appCal={};
        var dayLabels = [];
        var doctorId= null;
        
		function initAppCalendar(){
            
            viewStartDate = moment().startOf('isoWeek');
            viewEndDate = moment().endOf('isoWeek');
            curDate = moment();
            $appTable = $("<table/>").prop('id','docAppTab').append('<thead class="head"><tr/></thead>')
            $appTable.append('<tbody>').addClass('table  table-bordered borderpanel'); 
            $appTable.appendTo($('#DoctorApplist').parent()); 
            
            
            $.each(docdetails, function(i,doc){
            	console.log(doc);
            	console.log(i.doctorId);
               	appCal[doc.doctorId]={"docInfo":doc}; 
                console.log(docdetails);
                $.each(doc.shifts, function(j,shift){
                    $.each(shift.workingDays, function(k,wday){
                        if(!appCal[doc.doctorId][wday])appCal[doc.doctorId][wday]=[];
                        appCal[doc.doctorId][wday].push(shift); 
                    })
                })
            });
             
            updateAppCalendar();
            
            $.each(appCal, function(docID, docShifts){
                console.log("Shifts before Displaying : ..."+docShifts);
                console.log("Fromtime : "+docShifts.docInfo.shifts[0].workingDays);
                var slot=docShifts.docInfo.slotTime;
                console.log("slot times times ::"+docShifts.docInfo.slotTime);
                console.log(docdetails);
                $row = $('<tr/>').append('<td><span class="docName caps">Dr.'+docShifts.docInfo.firstName+'<span id="doctorIdHidden">'+docID+'</span><span id="slotTimeHidden">'+slot+'</span></span><br><span class="docDetails">'+docShifts.docInfo.gender+', '+docShifts.docInfo.mobileNumber1+'</span><br><span class="docQualification">'+docShifts.docInfo.qualification+', '+docShifts.docInfo.department+'</span>');
                
                $row.appendTo($appTable.find('tbody'));
                $.each(dayLabels, function(k,dayName){
                    var shifts = appCal[docID][dayName];
                   
                    var shiftStr = ''; 
                    
                    if(shifts)$.each(shifts, function(i, shift){
                     var shiftFrom= moment(shift.fromTime).format('hh:mm a');
                     var shiftTo= moment(shift.toTime).format('hh:mm a');
                     var strictTime=shift.strictSession;
                     console.log(shiftFrom);
                     var shiftTo;
                        shiftStr+='<button type="button" class="btn btn-sm btn-info getTime" onclick="timeOf(\''+shiftFrom+'\',\''+shiftTo+'\',\''+docShifts.docInfo.firstName+'\',\''+strictTime+'\',\''+slot+'\')">'+shiftFrom+' - '+shiftTo+'</button><br>';
                    });
                    
                    $row.append('<td class="'+dayLabels[k]+'">'+shiftStr+'</td>');
                   
                })
            });
          
             tabledata= $("#docAppTab").DataTable({
                 'sDom': 't' ,
                 "ordering": false
                 
             });
            $('#filterSelect').change(function() {
      		tabledata.search(this.value)
                                .draw();
     }); 
         loadDynamicData();  
              
        }
        
        function loadDynamicData(){

        	$("#dashboard").show();
            $("#appointment").hide();
            $("#backButton").hide();
            
            console.log("Loading the dynamic dates");
             $("#docAppTab tbody").on('click', 'td', function() {
                   tdClass = $(this).attr("class");
                if(tdClass == "Mon"){
                    setDate=$appTable.find('th:eq(1)').text();
                    $("#datefield").val(setDate);
                    console.log("value of th"+setDate);
            }
               else if(tdClass == "Tue"){
                    setDate=$appTable.find('th:eq(2)').text();
                    $("#datefield").val(setDate);
                    console.log("value of th"+setDate);
            }
               else if(tdClass == "Wed"){
                    setDate=$appTable.find('th:eq(3)').text();
                   $("#datefield").val(setDate);
                    console.log("value of th"+setDate);
            }
               else if(tdClass == "Thu"){
                    setDate=$appTable.find('th:eq(4)').text();
                    $("#datefield").val(setDate);
                    console.log("value of th"+setDate);
            }
               else if(tdClass == "Fri"){
                    setDate=$appTable.find('th:eq(5)').text();
                    $("#datefield").val(setDate);
                    console.log("value of th"+setDate);
            }
               else if(tdClass == "Sat"){
                    setDate=$appTable.find('th:eq(6)').text();
                   	$("#datefield").val(setDate);
            }
               else if(tdClass == "Sun"){
                    setDate=$appTable.find('th:eq(7)').text();
                   	$("#datefield").val(setDate);
            }
                
                var todaysDate=moment();
                var selectedDate=moment(setDate);
                console.log("todays date is "+todaysDate );
               	console.log("Selected Date "+selectedDate);
               	
               	var flag=false; 
              	if(moment(selectedDate).isBefore(todaysDate, 'day')){
                alert("You cannot book an appointment for the Past Date!! \n Please select the Valid Date");
               
               }        
               else{
                $("#dashboard").hide();
                $("#appointment").show();
                $("#backButton").show();
                loadCalendar(); 
                
                }
               
           });
            
        }
                
      	function timeOf(fromTime,toTime,name,strictTime,slot){
          console.log("Calling TimeOf function");
              $("#timeFrom").val(fromTime);
              $("#timeTo").val(toTime);
              $("#docName").val(name);
              $("#slotTimeHidden").text(slot);                
              $("#setSlotTime").text(strictTime);
                            
          };
          
        function loadCalendar(){
        	
        	$("#calendar").fullCalendar(fcOpts);
            match_timeFrom = $("#timeFrom").val();
            minTime= moment(match_timeFrom, "h:mm a");
            var strictTime=$("#setSlotTime").text();            
            console.log("Getting strict time on load of Calendear ::"+strictTime);
            if(strictTime=="true"){
            	match_timeTo = $("#timeTo").val();                
                maxTime= moment(match_timeTo, "h:mm a");
            }else{
            	maxTime= moment("11:59 pm", "h:mm a");
            }
            
            var slotduration=15; //$("#slotTimeHidden").text();
            console.log("time of slot ::"+slotduration)
          
             $("#calendar").fullCalendar('destroy');
             $("#calendar").fullCalendar(
                    $.extend(fcOpts, {
                    	slotDuration: '00:'+slotduration+':00',
                        slotLabelInterval : '00:'+slotduration+':00',
                        minTime: minTime,
                        maxTime: maxTime,
                        
                    })
            );
            
            console.log("load calendar called");
            date1=$("#datefield").val();
            startDate= moment(date1,'ddd DD MMM YYYY');
              
            $('#calendar').fullCalendar('gotoDate', startDate);
           
            loadPreviousAppointments();
           
         };
        function updateAppCalendar(){ 
            
            $appTable.find('thead tr:first').empty();
            $appTable.find('thead tr:first').append('<th class="widthName">Doc Details</th>');
            for(var viewDate = viewStartDate;viewDate<=viewEndDate;viewDate.add(1,'days')){
                dayLabels.push(viewDate.format('ddd'));
                 $appTable.find('thead tr:first').append('<th class="text-center '+viewDate.format("ddd")+'">'+viewDate.format("dddd <br> DD MMM YYYY")+'</th>');
            } 
            
        }
        function nextWeek(){
            viewEndDate.add(1,'weeks');
            updateAppCalendar();
        }
         function prevWeek(){
             viewStartDate.add(-2,'weeks');
             viewEndDate.add(-1,'weeks');
             updateAppCalendar();
         }
         
        /*********************Implementation ends **************/
        
    </script>
    </body>
</html>

    