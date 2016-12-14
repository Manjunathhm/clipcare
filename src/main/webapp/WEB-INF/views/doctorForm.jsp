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

  
    <f:form class="form-horizontal" id="registrationform" modelAttribute="doctor" method="post" action="save">

        <div class="container-fluid">
        <!--Modal section/Popup section-->
 <div class="modal abcd" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">Doctors List</h4>
      </div>
      
      <div class="modal-body">
        
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
                  <table id="doctorsList" class="table  table-bordered table-hover borderpanel"> 
                  <thead >
                      <tr>
                          	<th class="text-center">Name</th>
							<th class="text-center">Age</th>
						   	<th class="text-center">Contact</th>
						   	<th class="text-center">Email ID</th>
						    <th class="text-center">working Days</th>
						    <th class="text-center">From</th>
						    <th class="text-center">To</th>
						   	<th class="text-center">Modify</th>
                      </tr>
                  </thead>
               	<tbody>
       				<c:forEach var="doc" items="${doctors}" varStatus="status">
      				<tr>
       
	        			<c:url var="editUrl" value="form?doctorId=${doc.doctorId}"/>
	
				        <td class="text-center">Dr. ${doc.firstName} ${doc.middleName } ${doc.lastName }</td>
				        <td class="text-center">${doc.age}</td>
				        <td class="text-center">${doc.mobileNumber1}</td>
				        <td class="text-center">${doc.emailId1}</td>
				        
				        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.workingDays}</p></c:forEach></td>
				        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.fromTime}</p></c:forEach></td>
				        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.toTime}</p></c:forEach></td>
				       
				        <td class="text-center" ><a href='<c:out value="${editUrl}" />'><i class="glyphicon glyphicon-pencil" style="color:#006699" data-toggle="tooltip" title="Edit"></i></a></td>
				       <%--  <td class="text-center"><a href='<c:out value="${deleteUrl}"/>'><i class="glyphicon glyphicon-trash" style="color:#c12e2a" data-toggle="tooltip" title="Delete"></i></a></td>
				         --%>
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
            <div class="panel panel-primary borderPanel">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Doctors Master  </strong>
                            <input type="button" class="btn btn-success btn-sm pull-right"  name="ListAll" value="List-All" data-toggle="modal" data-target=".abcd">
                        	</h2>
                        </div>
                <div class="panel-body">            
                <div class="row">
                <f:hidden path="doctorId"/>
                    <div class="form-group-sm">
                    <%-- <div class=" col-sm-3 col-md-3">
                        <label for="Name">Title :</label>
                    
                        <f:select class="input-sm" path="title">
                            <f:option value="Mr">Mr.</f:option>
                            <f:option value="Mrs">Mrs.</f:option>
                            <f:option value="Mast">Mast.</f:option>
                            <f:option value="Miss">Miss.</f:option>
                        </f:select>

                    </div> --%>
                    <div class="col-sm-3 col-md-3">
                    	<h5 class="panel-heading panel-default"><strong>Personal Details</strong></h5>
                        <label for="firstName">First Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="firstName"  placeholder="First  Name"/>
                    </div>

                  	<div Class="col-sm-3 col-md-3">
                     	<h5 class="panel-heading panel-default"><strong>Current Address</strong></h5>
                        <label for="address">Address</label>                    
                        <f:textarea class="form-control input-sm caps" path="currentAddress.address" placeholder="address"/>
                    </div>
                    
                    <div Class="col-sm-3 col-md-3">
                   		<h5 class="panel-heading panel-default"><strong style="padding-right:50px">Permanent Address</strong><f:checkbox  path="sameAsCurrentAddress"/><span style="padding-left:5px">Same as Current</span></h5>
            	       	<div class="col-sm-12 col-md-12">
                        <label for="address">Address</label>                    
                        <f:textarea class="form-control input-sm caps" path="permanentAddress.address" placeholder="address"/>
                    </div> 
                    </div>

                  	<div Class="col-sm-3 col-md-3">
                     	<h5 class="panel-heading panel-default"><strong>Current Address</strong></h5>
                        <label for="address">Address</label>                    
                        <f:textarea class="form-control input-sm caps" path="currentAddress.address" placeholder="address"/>
                    </div>
                    </div>
                    
                </div>


                <div class="">
                    <div class="form-group">
                    <div class="col-sm-3 col-md-3">
                        <label for="middleName">Middle Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="middleName"  placeholder="Middle  Name"/>
                    </div>
                    <div class="col-sm-3 col-md-2 lineMargin">
                    	<label>Date of Birth</label>
                    	<f:input type="text" path="dateOfBirth" class="form-control input-sm " placeholder="mm/dd/yyyy"/>
                    </div>
                    <div class="col-sm-3 col-md-1 lineMargin">
                    	<label for="gender">Age</label>
                    	<f:input path="age" class="form-control input-sm "/>
                    </div>
                    <div class="col-sm-3 col-md-3 topmargin">
                    	<label for="gender">Gender</label>
               
                    	<label class="radio-inline lineMargin">
                        	<f:radiobutton path="gender" value="M"/>Male
                    	</label>
                    	<label class="radio-inline">
                        	<f:radiobutton path="gender" value="F"/>Female
                    	</label>
                    	<label class="radio-inline">
                        	<f:radiobutton path="gender" value="O"/>Others
                    	</label>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="lastName">Last Name</label>
                        <f:input type="text" class="form-control input-sm caps" path="lastName" placeholder="Last  Name"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="mobileNumber">Mobile Number</label>                    
                        <f:input type="number" class="form-control input-sm " path="mobileNumber1"  placeholder="Mobile Number(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="mobno2">Mobile Number</label>
                        <f:input type="number" class="form-control input-sm " path="mobileNumber2"  placeholder="Mobile Number(optional)"/>
                    </div>

                    </div>
                </div>

                <div class="row">
                    <div class="form-group-sm">
                    
                    
                    <div class="col-sm-3 col-md-3 ">
                        <label for="llnum">Landline Number</label>
                        <f:input type="number" class="form-control input-sm " path="landlineNumber1"  placeholder="Landline Number(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="llnum2">Landline Number</label>
                        <f:input type="number" class="form-control input-sm " path="landlineNumber2" placeholder="Landline Number(optional)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="email">E-mail ID</label>
                    
                        <f:input type="email" class="form-control input-sm " path="emailId1"  placeholder="E-mail Address(primary)"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="email2">E-mail ID</label>
                        <f:input type="email" class="form-control input-sm " path="emailId2" placeholder="E-mail Address(optional)"/>
                    </div>
                    </div>
                </div>
                

                <div class="row">
                    <div class="form-group-sm">
                    
                    <div class="col-sm-3 col-md-3">
                        <label for="landmark">Landmark</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="currentAddress.landmark" placeholder="Landmark"/>
                    </div>
                    
                    <div class="col-sm-3 col-md-3">
                        <label for="city">City</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="currentAddress.city" placeholder="City"/>
                    </div>
                    
                    </div>
                </div>

                <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="state">State</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="currentAddress.state" placeholder="State"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="country">Country</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="currentAddress.country" placeholder="Country"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="pincode">Pin Code</label>                    
                        <f:input type="number" class="form-control input-sm " path="currentAddress.pincode" placeholder="Pin code"/>
                    </div>
                    </div>
                </div>

                <div class=row>
                <div class="form-group-sm">
                
                      
                    </div>
                </div>

                <div class="row">
                    <div class="form-group-sm">
                    
                    <div class="col-sm-3 col-md-3">
                        <label for="landmark">Landmark</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="permanentAddress.landmark" placeholder="Landmark"/>
                    </div>
                    
                    <div class="col-sm-3 col-md-3">
                        <label for="city">City</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="permanentAddress.city" placeholder="City"/>
                    </div>
                    
                    </div>
                </div> 
                           
                <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="state">State</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="permanentAddress.state" placeholder="State"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="country">Country</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="permanentAddress.country" placeholder="Country"/>
                    </div>
                    <div class="col-sm-3 col-md-3 lineMargin">
                        <label for="pincode">Pin Code</label>                    
                        <f:input type="number" class="form-control input-sm " path="permanentAddress.pincode" placeholder="Pin code"/>
                    </div>
                    </div>
                </div>
                <div class=row>
                    <div Class="col-sm-12 ">
                     <h3 class="panel-heading panel-default"><strong>Emergency Contact Detalis</strong></h3>
                    </div>
                </div>


           		<div class="row">
                <div class="form-group-sm">
                <div class="col-sm-3 col-md-3">
                    <label for="Name">Name</label>               
                    <f:input type="text" class="form-control input-sm caps" path="emergencyContact.firstName"  placeholder="Name"/>
                </div>
                <div class="col-sm-3 col-md-3">
                    <label for="relation">Relation</label>                
                    <f:input type="text" class="form-control input-sm caps" path="emergencyContact.relationship"  placeholder="Relation"/>
                </div>
                <div class="col-sm-3 col-md-3">
                    <label for="mobnum">Mobile Number</label>                
                    <f:input type="number" class="form-control input-sm " path="emergencyContact.mobileNumber1"  placeholder="Mobile Number(primary)"/>
                </div>
                <div class="col-sm-3 col-md-3 ">
                    <label for="mobnum2">Mobile Number</label>
                    <f:input type="number" class="form-control input-sm " path="emergencyContact.mobileNumber2" placeholder="Mobile Number(optional)"/>
                </div>
                    
                </div>                
            </div>
            <div class="row">
                <div class="form-group-sm">
                <div class="col-sm-3 col-md-3">
                    <label for="llnum">Landline Number</label>                
                    <f:input type="number" class="form-control input-sm " path="emergencyContact.landlineNumber1" placeholder="Landline Number(primary)"/>
                </div>
                <div class="col-sm-3 col-md-3">
                    <label for="llNum">Landline Number</label>
                    <f:input type="number" class="form-control input-sm " path="emergencyContact.landlineNumber2"  placeholder="Landline Number(optional)"/>
                </div>
                    <div class="col-sm-3 col-md-3">
                    <label  for="text">E-mail ID</label>
                    <f:input type="email" class="form-control input-sm " path="emergencyContact.emailId1"  placeholder="E-mail Address(primary)"/>
                </div>
                <div class="col-sm-3 col-md-2">
                    <label  for="email">E-mail ID</label>
                    <f:input type="email" class="form-control input-sm " path="emergencyContact.emailId2"  placeholder="E-mail Address(optional)"/>
                </div>
                    
                </div>
            </div>

            <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3">
                        <label for="address">Address</label>                    
                        <f:textarea class="form-control input-sm caps" path="emergencyContact.address.address" placeholder="address"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="landmark">Landmark</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="emergencyContact.address.landmark" placeholder="Landmark"/>
                    </div>
                    
                    <div class="col-sm-3 col-md-3">
                        <label for="city">City</label>                   
                        <f:input type="text" class="form-control input-sm caps" path="emergencyContact.address.city" placeholder="City"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label class="control-label" for="state">State</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="emergencyContact.address.state" placeholder="State"/>
                    </div>
                    </div>
                </div>            
                <div class="row">
                    <div class="form-group-sm">
                    <div class="col-sm-3 col-md-3">
                        <label for="country">Country</label>                    
                        <f:input type="text" class="form-control input-sm caps" path="emergencyContact.address.country" placeholder="Country"/>
                    </div>
                    <div class="col-sm-3 col-md-3">
                        <label for="pincode">Pin Code</label>                    
                        <f:input type="number" class="form-control input-sm " path="emergencyContact.address.pincode" placeholder="pin code"/>
                    </div>
                    </div>
                </div>
                <div class=row>
                    <div Class="col-sm-12 ">
                     <h3 class="panel-heading panel-default"><strong>Qualification</strong></h3>
                    </div>
                </div>
            
           
           
            <div class="row">
                <div class="form-group-sm">
                <div class="col-sm-4 col-md-4">
                    <label for="basic">Qualification</label>                
                    <f:textarea class="form-control input-sm caps" path="qualification" placeholder="Doctors Qualifications"/>
                </div>                
                <div class="col-sm-4 col-md-4">
                    <label for="basic">Specialization</label>                
                    <f:textarea class="form-control input-sm caps" path="specialization" placeholder="area of Specialization"/>
                </div>
                    <div class="col-sm-4 col-md-4">
                    <label for="basic">Experience</label>                
                    <f:textarea class="form-control input-sm caps" path="workHistory"  placeholder="working Experience"/>
                </div>
                </div>
            </div>
           

            <div class="row">
               <div class="form-group-sm">                    
                <div class="col-sm-4 col-md-4">                       
                    <label for="pincode">OMA Number:</label>                
                    <f:input type="text" class="form-control input-sm caps" path="otherMedicalRegNumber" placeholder="Other Medical Association"/>                   
                 </div>
                 <div class="col-sm-4 col-md-4">
                    <label for="kmc">State Reg Number</label>               
                    <f:input type="text" class="form-control input-sm caps" path="stateMedicalRegNumber" placeholder="State Registration Number"/>
                 </div>
                <div class="col-sm-4 col-md-4">
                    <label for="country">Country Reg Number:</label>                
                    <f:input type="text" class="form-control input-sm caps" path="countryMedicalRegNumber" placeholder="Country Registration Number"/>
                </div>
                    
                </div>
            </div>
            <div class="row">
                    <div class="form-group-sm">
                        <div class="col-sm-4 col-md-4">
                            <label for="department">Department</label>
                            <f:input type="text" class="form-control input-sm caps" path="department" placeholder="Department Name"/>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <label for="designation">Designation</label>
                            <f:input type="text" class="form-control input-sm caps" path="designation" placeholder="Designation"/>
                        </div>
                        <div class="col-sm-4 col-md-4">
                            <label for="department">Joining Date</label>
                            <f:input type="text" class="form-control input-sm " path="dateOfJoining" placeholder="mm/dd/yyyy"/>
                        </div>
                    </div>
                            
                </div>
                <div class="row">
                <div class="form-group-sm">
                	<div class="col-sm-4 col-md-4">
                	<label>Slot Time</label>
                		<f:select class="form-control input-sm" path="slotTime">
                		<f:option value="15">15 min</f:option>
                		<f:option value="30">30 min</f:option>
                		<f:option value="45">45 min</f:option>
                		<f:option value="60">60 min</f:option>
                		</f:select>
                	</div>
                </div>
                </div>
                <div class=row>
                    <div Class="col-sm-12 ">
                     <h3 class="panel-heading panel-default"><strong>Shift</strong></h3>
                    </div>                    
                </div>
                
            <div class="row">
                <div class="form-group-sm">
                <div class="col-sm-12">
                <div class="">
                <table class="table table-bordered table-hover" id="shiftsTable">
                    <thead>
                        <tr>
                            <th class="text-center" style="width: 300px">Working Date</th>
                            <th class="text-center" >Session</th>
                            <th class="text-center" >Strict session</th>
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
                            
                            
            <div class=row>
                    <div Class="col-sm-12 ">
                     <h3 class="panel-heading panel-default"><strong>Insurance</strong></h3>
                    </div>
                </div>

            <div class="row">
                <div class="form-group-sm">
                <div class="col-sm-6 col-md-4">
                    <label for="mli">Medico Legal Insurance Name</label>                
                    <f:input type="text" class="form-control input-sm caps" path="medicoLegalInsuranceName" placeholder="Insurance Name"/>
                </div>
                <div class="col-sm-6 col-md-4">
                    <label for="sum">Sum Assured</label>                
                    <f:input type="text" class="form-control input-sm caps" path="sumAssured" placeholder="Amount"/>
                </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group-sm">
                <div class="col-sm-6 col-md-4">
                    <label class="control-label" for="kmc">Date of Issue</label>                
                    <f:input type="text" class="form-control input-sm " path="dateOfIssue" placeholder="mm/dd/yyyy"/>
                </div>
                <div class="col-sm-6 col-md-4">
                    <label class="control-label" for="country">Date of Expiry:</label>
                
                    <f:input type="text" class="form-control input-sm " path="dateOfExpiry" placeholder="mm/dd/yyyy"/>
                </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <hr/>
                </div>
            </div>
            <div class="row buttons">
                <div class="col-sm-12 col-md-12 text-center">
                    <button type="submit" class="btn btn-default button" id="save">Save</button>
                    <button class="btn btn-default button" onClick="window.location='/LoginMavenSpringMVC/doctor/form'" id="reset">Reset</button>
                </div>
            </div>
                </div>
            </div>
        

        </div>
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
  

    <script>
        $('ul.nav li.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>
   
    <script>
    // autocomplete field of current address
	
            var autocomplete = new google.maps.places.Autocomplete($('[name="currentAddress.landmark"]')[0], {});

            google.maps.event.addListener(autocomplete, 'place_changed', function() {
            	//landmark Name
            	//console.log("Address within array "+address);
                var landmarkValue=$('[name="currentAddress.landmark"]').val();                 
                //console.log("value of landmark :"+landmarkValue);
                var index=landmarkValue.indexOf(",");
                $('[name="currentAddress.landmark"]').val(landmarkValue.substr(0, index));
               
            	// geting pincode city and country
                var place = autocomplete.getPlace();
                var address = place.formatted_address;         
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1);               
                $('[name="currentAddress.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="currentAddress.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="currentAddress.state"]').val(state);
                pin=index[2];
                $('[name="currentAddress.pincode"]').val(pin);
               // console.log("city is: "+city+" State is: "+state+" pin is : "+pin+" country is : "+country);
                            
            });
           
        </script>
        <script>
        // autocomplete field of permanent address
            var pautocomplete = new google.maps.places.Autocomplete($('[name="permanentAddress.landmark"]')[0], {});

            google.maps.event.addListener(pautocomplete, 'place_changed', function() {
            	//landmark Name
            	
                var plandmarkValue=$('[name="permanentAddress.landmark"]').val();                 
                //console.log("value of landmark :"+plandmarkValue);
                 var pindex=plandmarkValue.indexOf(",");
                $('[name="permanentAddress.landmark"]').val(plandmarkValue.substr(0, pindex));
                //count1=splitLandMark.length;
                //console.log("value of landmark to be appended :"+landmarkValue.substr(0, index));
                
            	// geting pincode city and country
                var place = pautocomplete.getPlace();
            	console.log("values of palce: "+place);
                 var address = place.formatted_address; 
               console.log("Address within array "+address);
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1); 
               // console.log("name of permanent country :"+country)
                $('[name="permanentAddress.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="permanentAddress.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="permanentAddress.state"]').val(state);
                pin=index[2];
                $('[name="permanentAddress.pincode"]').val(pin);
               // console.log("city is: "+city+" State is: "+state+" pin is : "+pin+" country is : "+country);
                             
            });
           
        </script>
        <script>
        // autocomplete field of permanent address
            var Eautocomplete = new google.maps.places.Autocomplete($('[name="emergencyContact.landmark"]')[0], {});

            google.maps.event.addListener(Eautocomplete, 'place_changed', function() {
            	//landmark Name
            	
                var ElandmarkValue=$('[name="emergencyContact.landmark"]').val();                 
                //console.log("value of landmark :"+plandmarkValue);
                 var Eindex=ElandmarkValue.indexOf(",");
                $('[name="emergencyContact.landmark"]').val(ElandmarkValue.substr(0, Eindex));
                //count1=splitLandMark.length;
                //console.log("value of landmark to be appended :"+landmarkValue.substr(0, index));
                
            	// geting pincode city and country
                var place = Eautocomplete.getPlace();
            	console.log("values of palce: "+place);
                 var address = place.formatted_address; 
               console.log("Address within array "+address);
        		var  value = address.split(",");
                count=value.length;
                country=value[count-1].substr(1); 
               // console.log("name of permanent country :"+country)
                $('[name="emergencyContact.country"]').val(country);
                stateNpin=value[count-2];
               // console.log("state and pin is: "+stateNpin);
                city=value[count-3].substr(1);
                $('[name="emergencyContact.city"]').val(city);
                var index=stateNpin.split(" ");                
                state=index[1];
                //console.log("state is:"+state);
                $('[name="emergencyContact.state"]').val(state);
                pin=index[2];
                $('[name="emergencyContact.pincode"]').val(pin);
                            
            });
           
        </script>
    
    <script type="text/javascript">
$(document).ready(function(){
	
	$('[name="shifts[0].strictSession"]').bootstrapSwitch();
	 $('input[name="shifts[0].strictSession"]').on('switchChange.bootstrapSwitch', function (event, state) {
         console.log(this); // DOM element
         console.log(event); // jQuery event
         console.log(state); // true | false
	 });
	 
    
           $('[name="shifts[0].workingDays"]').selectpicker();  
               $('[name="shifts[0].fromTime"]').timepicker({
            	   defaultTime:"08:00 Am",
            	   showInputs:false
               });
            
               $('[name="shifts[0].toTime"]').timepicker({
            	   defaultTime:"10:00 Am",
            	   showInputs:false
               });
    
           $("#dateOfIssue").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
           $("#dateOfExpiry").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               startDate: new Date()
              });
           $("#joiningDate").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
           
           $("#dateOfBirth").datepicker({
               autoclose: true,        
               format: 'mm/dd/yyyy',
               endDate: new Date()
              });
              
           $('[name="dateOfBirth"]').change(function() {   
           	
              $('[name="age"]').val(getAge(new Date($('[name="dateOfBirth"]').val())));
             
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
           $('input[name="sameAsCurrentAddress"]').click(function(){
               if($(this).prop("checked") == true){
                      console.log("Checkbox is checked.");
                      $('[name="permanentAddress.address"]').val($('[name="currentAddress.address"]').val());
                      $('[name="permanentAddress.landmark"]').val($('[name="currentAddress.landmark"]').val());
                      $('[name="permanentAddress.city"]').val($('[name="currentAddress.city"]').val());
                      $('[name="permanentAddress.state"]').val($('[name="currentAddress.state"]').val());
                      $('[name="permanentAddress.country"]').val($('[name="currentAddress.country"]').val());
                      $('[name="permanentAddress.pincode"]').val($('[name="currentAddress.pincode"]').val());
                      
                     
                  }
                  else if($(this).prop("checked") == false){
                      console.log("Checkbox is unchecked.");
                      $('[name="permanentAddress.address"]').val("");
                      $('[name="permanentAddress.landmark"]').val("");
                      $('[name="permanentAddress.city"]').val("");
                      $('[name="permanentAddress.state"]').val("");
                      $('[name="permanentAddress.country"]').val("");
                      $('[name="permanentAddress.pincode"]').val("");
                  }
               
              });
           for(x=1;x<8;x++){
        	   $('[name="shifts['+x+'].workingDays"]').selectpicker();
        	   $('[name="shifts['+x+'].fromTime"]').timepicker();
        	   $('[name="shifts['+x+'].toTime"]').timepicker();
        	   $('[name="shifts['+x+'].strictSession"]').bootstrapSwitch();
        	   
           }
    
    
    var glyphRemove="";
    var nextIndex=0;
	glyphRemove="<span class='glyphicon glyphicon-minus glyph_size' onClick='$(this).parent().parent().parent().remove()'   aria-hidden='true'></span>";
		$("#add").click(function() {
			
    		var Index =( $("#shiftsTable").find('input').length/5);
    		nextIndex=Index-1;    		
    		console.log(nextIndex);    	
    		if(nextIndex < 8){
    			var clone= $("#cloneObject").clone();
    			//console.log("coming Inside")
    			clone.removeClass('hide');    			
    			clone.prop('disabled',false);
    			clone.find('select:eq(0)').attr('name','shifts['+nextIndex+'].workingDays');
    			clone.find('select:eq(0)').attr('id','shifts['+nextIndex+'].workingDays');     		    		
	    		clone.find('input:eq(1)').attr('name','shifts['+nextIndex+'].fromTime');
	    		clone.find('input:eq(1)').attr('id','shifts['+nextIndex+'].fromTime');
	    		clone.find('input:eq(2)').attr('name','shifts['+nextIndex+'].toTime');
	    		clone.find('input:eq(2)').attr('id','shifts['+nextIndex+'].toTime');
	    		clone.find('input:eq(3)').attr('name','shifts['+nextIndex+'].strictSession');
	    		clone.find('input:eq(3)').attr('id','shifts['+nextIndex+'].strictSession');
	    		
	    		
	    		clone.find('input:eq(1)').val(' ');
	    		clone.find('input:eq(2)').val(' ');
	    		clone.find('#add').remove();
	    		
	    		clone.find('#glyph').append(glyphRemove);
	    		clone.find('span').attr('id','remove['+nextIndex+']');
	    		clone.appendTo("#shiftsTable");     
    		}
    		$('select[name="shifts['+nextIndex+'].workingDays"]').selectpicker(); 
    		 $('[name="shifts['+nextIndex+'].fromTime"]').timepicker({
           	   defaultTime:"08:00 am"
             });
          
             $('[name="shifts['+nextIndex+'].toTime"]').timepicker({
          	   
             });
             $('[name="shifts['+nextIndex+'].strictSession"]').bootstrapSwitch();
             
        	
		});
		$("#doctorsList").dataTable();
       
});
</script>

</body>

</html>