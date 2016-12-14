<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <title>Registration</title>

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
   
     <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap-switch.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/main.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >

</head>

<body>

  <header>
        <div class="header-logo row">
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                <img src="images/logo.png" class="col-xs-6 col-sm-10 col-md-6 col-lg-4 img-responsive">
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
                                <li><a href="master_medication.html">Medication</a></li> <li><a href="teamformation.html">Care Team</a></li>
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
                                <li>
                                    <a href="#"> </a></li>
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Appointments<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="appointment.html">Appointment</a></li>
                                <li>
                                    <a href="appointmentDashboardConsolidated.html">Appointment Dashboard </a>
                                </li>
                                <li>
                                    <a href="#"></a>
                                </li>
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
  </div><!-- /.container-fluid -->
</nav>

    </header>


    <f:form class="form-horizontal" id="registrationform" action="savePatient" modelAttribute="patient">

        <div class="container data">

		 <f:form modelAttribute="hospital">
            <div class="row begin-top ">

                <div class="col-sm-6 col-md-2">
                    <label for="loc_name">Location Name :</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="location" placeholder="Location Name" />
                </div>

                <div class="col-sm-6 col-md-2">
                    <label for="hosp_name">Hospital Name :</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="hospitalName" placeholder="Hospital Name"/>
                </div>

                <div class="col-sm-6 col-md-2">
                    <label for="branch">Branch :</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="branch" placeholder="Branch Location" />
                </div>
                
            </div>
          </f:form>

            <div class="row">
                <div class=" col-sm-12 col-md-12">
                    <h3>Patient Information</h3>
                    <hr style="border : dotted 1px">
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label for="pid">Patient ID :</label>
                </div>
                <div class="col-sm-6 col-md-2">
<%--                     <f:input type="text" class="form-control input-sm field_color" disabled="true" path="patientId" placeholder="Patient ID"/>
 --%>                    <f:input type="text" path="patientId" readonly="true" placeholder="Patinet Id"/>
                </div>
            </div>

            <div class="row">

                <div class="col-sm-6 col-md-2">
                    <label for="Name">Name :</label>
                </div>
                <div class="col-sm-2 col-md-2">
                    <f:select class="form-control input-sm select-color select-width" path="patientTitle">
                        <f:option value="">---</f:option>
                        <f:option value="Mr">Mr.</f:option>
                        <f:option value="Mrs">Mrs.</f:option>
                        <f:option value="Mast">Mast.</f:option>
                        <f:option value="Miss">Miss.</f:option>
                    </f:select>

                </div>
                <div class="col-sm-2 col-md-2">
                    <f:input type="text" class="form-control input-sm field_color" path="firstName" placeholder="First  Name"/>
                </div>
                
                <div class="col-sm-2 col-md-2">
                    <f:input type="text" class="form-control input-sm field_color" path="middleName" placeholder="Middle  Name"/>
                </div>


                <div class="col-sm-4 col-md-2">
                    <f:input type="text" class="form-control input-sm field_color" path="lastName" placeholder="Last  Name"/>
                </div>
                
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="dob">Date of Birth :</label>
                </div>

                
                <div class="col-sm-4 col-md-2">                
                    <f:input type="text" class="form-control input-sm field_color" path="dateOfBirth" placeholder="mm/dd/yyyy"/>             
                </div>
                 
                <div class="col-sm-2 col-md-1">
                    <f:input type="number" class="form-control input-sm field_color" path="age" placeholder="Age"/>
                </div>
                <div class="col-sm-6 col-md-1">
                    <label class="control-label" for="gender">Gender :</label>
                </div>
                <div class="col-sm-6 col-md-3">
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="M"/>Male
                    </label>
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="F"/>female
                    </label>
                    <label class="radio-inline">
                        <f:radiobutton path="gender" value="O"/>Others
                    </label>
                    
					
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-2">
                    <h4>In case of Minor   </h4></div>
                <div class="col-sm-6 col-md-6 col-lg-2">
                    <input type="checkbox" name="my-checkbox" id="minor">
                </div>
            </div>

            <div id=minorinfo>
                <div class="row">
                    <div class="col-sm-6 col-md-2">
                        <label class="control-label">Parent's/Guardian Id:</label>
                    </div>
                    <div class="col-sm-6 col-md-2">
                        <input type="search" name="searchParent" id="searchParent" class="form-control input-sm field_color" placeholder="Id">
                    </div>
                    <div class="col-sm-6 col-md-1">
                        <label class="control-label">Name:</label>
                    </div>
                    <div class="col-sm-6 col-md-2">
                        <input type="text" class="form-control input-sm field_color" name="SearchParentName" id="SearchParentName" placeholder="Name">
                    </div>
                    <div class="col-sm-6 col-md-1">
                        <label class="control-label">Contact:</label>
                    </div>
                    <div class="col-sm-5 col-md-2">
                         <input type="text" class="form-control input-sm field_color" name="SearchParentcontact" id="SearchParentcontact" placeholder="Contact">
                    </div>
                    <div class="col-sm-1 col-md-1">
                        <button type=button class="btn btn-sm btn-success">
                        <span id="SearchParentsInfo" class="glyphicon glyphicon-search glyphSize"></span></button>
                    </div>
                    
                </div>
                <div class="row">

                    <div class="col-sm-6 col-md-2">
                        <label for="Name">Parent/Guardian Name :</label>
                    </div>
                    <div class="col-sm-2 col-md-2">
                        <f:select class="form-control input-sm select-color select-width" path="guardian.title">
                            <f:option value="Mr">Mr.</f:option>
                            <f:option value="Mrs">Mrs.</f:option>
                            <f:option value="Mrst">Mast.</f:option>
                            <f:option value="Miss">Miss.</f:option>
                        </f:select>

                    </div>

                    <div class="col-sm-2 col-md-2">
                        <f:input type="text" class="form-control input-sm field_color" path="guardian.firstName" placeholder="First  Name"/>
                    </div>
                    
                    <div class="col-sm-2 col-md-2">
                        <f:input type="text" class="form-control input-sm field_color" path="guardian.middleName" placeholder="Middle  Name"/>
                    </div>


                    <div class="col-sm-4 col-md-2">
                        <f:input type="text" class="form-control input-sm field_color" path="guardian.lastName" placeholder="Last  Name"/>
                    </div>


                </div>

                <div class="row">
                
                    <div class="col-sm-6 col-md-2">
                        <label class="control-label" for="mobnum">Mobile Number :</label>
                    </div>


                    <div class="col-sm-3 col-md-2 ">
                        <f:input type="number" class="form-control input-sm field_color" path="guardian.mobileNumber1" placeholder="Mobile Number"/>
                    </div>
                    <div class="col-sm-3 col-md-2 ">
                        <f:input type="number" class="form-control input-sm field_color" path="guardian.mobileNumber2" placeholder="Mobile Number"/>
                    </div>

                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-2">
                        <label class="control-label" for="email">E-mail ID :</label>
                    </div>


                    <div class="col-sm-3 col-md-2">
                        <f:input type="text" class="form-control input-sm field_color" path="guardian.emailId1" placeholder="E-mail Address"/>
                    </div>
                    <div class="col-sm-3 col-md-2">
                        <f:input type="text" class="form-control input-sm field_color" path="guardian.emailId2" placeholder="E-mail Address"/>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class=" col-sm-12 col-md-12">
                    <h3>Contact Details</h3>
                    <hr style="border : dotted 1px">
                </div>
            </div>
           
            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="mobnum">Mobile Number :</label>
                </div>


                <div class="col-sm-3 col-md-2 ">
                    <f:input type="number" class="form-control input-sm field_color" path="mobileNumber1" placeholder="Mobile Number"/>
                </div>
                <div class="col-sm-3 col-md-2 ">
                    <f:input type="number" class="form-control input-sm field_color" path="mobileNumber2" placeholder="Mobile Number"/>
                </div>



            </div>
            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="llnum">Landline Number :</label>
                </div>


                <div class="col-sm-3 col-md-2">
                    <f:input type="number" class="form-control input-sm field_color" path="landlineNumber1" placeholder="Landline Number"/>
                </div>
                <div class="col-sm-3 col-md-2">
                    <f:input type="number" class="form-control input-sm field_color" path="landlineNumber2" placeholder="Landline Number"/>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="email">E-mail ID :</label>
                </div>


                <div class="col-sm-3 col-md-2">
                    <f:input type="text" class="form-control input-sm field_color" path="emailId1" placeholder="E-mail Address"/>
                </div>
                <div class="col-sm-3 col-md-2">
                    <f:input type="text" class="form-control input-sm field_color" path="emailId2" placeholder="E-mail Address"/>
                </div>
            </div>
             <div class=row>
            <div Class="col-sm-12">
            <p><strong>Current Address</strong></p>
            </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="address">Address :</label>
                </div>
                <div class="col-sm-6 col-md-4 ">
                    <f:textarea class="form-control input-sm field_color" cols="3" rows="5" path="currentAddress.address"></f:textarea>
                </div>
                <div class="col-md-1"></div>
                <div class="col-sm-6 col-md-1">
                    <label class="control-label" for="landmark">Landmark:</label>
                </div>
                <div class="col-sm-6 col-md-4">
                    <f:input type="text" class="form-control input-sm field_color" path="currentAddress.landmark" placeholder="Landmark"/>
                </div>
                <div class="col-md-1"></div>
                <div class="col-sm-6 col-md-1">
                    <label for="city">City :</label>
                </div>
                <div class="col-sm-6 col-md-4 ">
                    <f:input type="text" class="form-control input-sm field_color" path="currentAddress.city" placeholder="City"/>
                </div>
            </div>
            <div class="row">



                <div class="col-sm-6 col-md-2">
                    <label for="state">State :</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="currentAddress.state" placeholder="State"/>
                </div>
                <div class="col-sm-6 col-md-1">
                    <label for="country">Country:</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="currentAddress.country" placeholder="Country"/>
                </div>
                <div class="col-sm-6 col-md-1">
                    <label for="pincode">Pin Code</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="currentAddress.pincode" placeholder="Pin code"/>
                </div>
            </div>

 <div class=row>
            <div Class="col-sm-4 col-md-2">
            <p><strong>Permanent Address</strong></p>
            </div>
            <div class="col-sm-7 col-md-7">            	
            	<p><f:checkbox path="sameAsCurrentAddress"/>Parmanent Address is same as My Current Address</p>
            </div>                	
           
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <label class="control-label" for="address">Address :</label>
                </div>
                <div class="col-sm-6 col-md-4 ">
                    <f:textarea class="form-control input-sm field_color" cols="3" rows="5" path="permanentAddress.address"></f:textarea>
                </div>
                <div class="col-md-1"></div>
                <div class="col-sm-6 col-md-1">
                    <label class="control-label" for="landmark">Landmark:</label>
                </div>
                <div class="col-sm-6 col-md-4">
                    <f:input type="text" class="form-control input-sm field_color" path="permanentAddress.landmark" placeholder="Landmark"/>
                </div>
                <div class="col-md-1"></div>
                <div class="col-sm-6 col-md-1">
                    <label for="city">City :</label>
                </div>
                <div class="col-sm-6 col-md-4 ">
                    <f:input type="text" class="form-control input-sm field_color" path="permanentAddress.city" placeholder="City"/>
                </div>
            </div>
            <div class="row">


                <div class="col-sm-6 col-md-2">
                    <label for="state">State :</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="permanentAddress.state" placeholder="State"/>
                </div>
                <div class="col-sm-6 col-md-1">
                    <label for="country">Country:</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="permanentAddress.country" placeholder="Country"/>
                </div>
                <div class="col-sm-6 col-md-1">
                    <label for="pincode">pin Code</label>
                </div>
                <div class="col-sm-6 col-md-2 ">
                    <f:input type="text" class="form-control input-sm field_color" path="permanentAddress.pincode" placeholder="pin code"/>
                </div>
            </div>
           
            <div class="row">
                <div class=" col-sm-12 col-md-12">
                    <h3>Payment Information</h3>
                    <hr style="border : dotted 1px">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 col-md-3">
                    <f:select class="form-control input-sm field_color" path="paymentType">
                    
                    <f:option value="">Mode of Payment</f:option> 
                    <f:option value="Self">Self</f:option>
                    <f:option value="Corporate">Corporate</f:option>
                    <f:option value="Insurance">Insurance</f:option>
                    <f:option value="BMS-Group">BMS-Group</f:option>
                                     
                    </f:select>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12 col-md-12">

                    <hr />
                </div>
            </div>

            <div class="row buttons">
                <div class="col-sm-12 col-md-12 text-center">
                    <button type="submit" class="btn btn-default button" id="addpatient">Save</button>
                    <button class="btn btn-default button" id="reset" onclick="window.location='/LoginMavenSpringMVC/patient/newPatient'">Reset</button>
                </div>
            </div>



        </div>
    </f:form>


     <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
            <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap-switch.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-datepicker.js"/>'></script>
    
    <script>
        $('ul.nav li.dropdown').hover(function () {
            
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>

   
    <script>
        $(document).ready(function() {
             $('#minorinfo').hide();
             $("[name='my-checkbox']").bootstrapSwitch({
                 state:false
                 
             });
           // $.fn.bootstrapSwitch.defaults.state = false;
        $('input[name="my-checkbox"]').on('switchChange.bootstrapSwitch', function (event, state) {
            console.log(this); // DOM element
            console.log(event); // jQuery event
            console.log(state); // true | false
         
        if(state){
        $('#minorinfo').show();
        }else{
            $('#minorinfo').hide();
        }
    });
        $("#dateOfBirth").datepicker({
            autoclose: true,        
            format: 'mm/dd/yyyy'
            //endDate: new Date()
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
            
            jQuery.validator.addMethod("noSpace", function(value, element) { 
				  return this.optional(element) || value == value.match(/^[a-zA-Z]*$/); 
				}, "Should be only text without blank space");
            jQuery.validator.addMethod("IDOnly", function(value, element) { 
				  return this.optional(element) || value == value.match(/^[a-zA-Z0-9]*$/); 
				}, "Should be alpha-numeric only");
      	
			jQuery.validator.addMethod("textOnly", function(value, element) { 
				  return this.optional(element) || value == value.match(/^[a-zA-Z ]*$/); 
				}, "Character is not allowed");
			jQuery.validator.addMethod("numberOnly", function(value, element) { 
				  return this.optional(element) || value == value.match(/^[0-9]*$/); 
				}, "should be digits only");
            
            $("#registrationform").validate({
            	rules:{
            		location:{
            			required: true,
            			textOnly:true,
            			minlength:3
            		},
            		Hname:{
            			required:true,
            			minlength:3,
            			textOnly:true
            		},
            		BranchLocation:{
            			required:true,
            			minlength:3,
            			textOnly:true
            		},
            		patientTitle:{
            			required:true,
            		},
            		firstName:{
            			required:true,
            			noSpace:true
            		},
            		middleName:{
            			required:false,
            			textOnly:true
            		},
            		lastName:{
            			required:false,
            			noSpace:true
            		},
            		dateOfBirth:{
            			required: true            			
            		},
            		age:{
            			required:true,
            			numberOnly:true
            		},
            		searchParent:{
            			required:false,
            			IDOnly:true
            		},
            		SearchParentName:{
            			required:false,
            			textOnly:true
            		},
            		SearchParentcontact:{
            			required:false,
            			numberOnly:true,
            			minlength:10,
            			maxlength:10
            		},
            		"guardian.firstName":{
            			required:false,
            			noSpace:true,
            			minlength:3
            		},
            		"guardian.middleName":{
            			required:false,
            			textOnly:true,
            			minlength:3            			
            		},
            		"guardian.lastName":{
            			required:false,
            			noSpace:true,
            			minlength:3
            		},
            		"guardian.mobileNumber1":{
            			required:false,
            			minlength:10,
            			maxlength:10,
            			numberOnly:true
            		},
            		"guardian.mobileNumber2":{
            			required:false,
            			minlength:10,
            			maxlength:10,
            			numberOnly:true
            		},
            		"guardian.emailId1":{
            			required:false,
            			email:true
            		},
            		"guardian.emailId2":{
            			required:false,
            			email:true
            		},
            		mobileNumber1:{
            			required:true,
            			minlength:10,
            			maxlength:10,
            			numberOnly:true
            		},
            		mobileNumber2:{
            			required:false,
            			minlength:10,
            			maxlength:10,
            			numberOnly:true
            		},
            		landlineNumber1:{
            			required:true,
            			minlength:9,
            			maxlength:10,
            			numberOnly:true
            		},
            		landlineNumber2:{
            			required:false,
            			minlength:9,
            			maxlength:10,
            			numberOnly:true
            		},
            		emailId1:{
            			required:true,
            			email:true
            		},
            		emailId2:{
            			required:false,
            			email:true
            		},
            		"currentAddress.address":{
            			required:true,
            			minlength:5
            		},
            		"currentAddress.landmark":{
            			required:true,
            			minlength:3,
            			textOnly:true
            		},
            		"currentAddress.city":{
            			required:true,
            			minlength:3,
            			textOnly:true            			
            		},
            		"currentAddress.state":{
            			required:true,
            			minlength:3,
            			textOnly:true  
            		},
            		"currentAddress.country":{
            			required:true,
            			minlength:3,
            			textOnly:true 
            		},
            		"currentAddress.pincode":{
            			required:true,
            			minlength:6,
            			maxlength:6,
            			numberOnly:true 
            		},
            		"permanentAddress.address":{
            			required:true,
            			minlength:5
            		},
            		"permanentAddress.landmark":{
            			required:true,
            			minlength:3,
            			textOnly:true
            		},
            		"permanentAddress.city":{
            			required:true,
            			minlength:3,
            			textOnly:true            			
            		},
            		 "permanentAddress.state":{
            			required:true,
            			minlength:3,
            			textOnly:true  
            		},
            		"permanentAddress.country":{
            			required:true,
            			minlength:3,
            			textOnly:true 
            		},
            		"permanentAddress.pincode":{
            			required:true,
            			minlength:6,
            			maxlength:6,
            			numberOnly:true 
            		},
            		referraltype:{
            			required:false,
            			textOnly:true,
            			minlength:3
            		},
            		referralName:{
            			required:false,
            			textOnly:true,
            			minlength:3
            		},
            		rbranch:{
            			required:false,
            			textOnly:true,
            			minlength:3
            		},
            		contact:{
            			required:false,
            			minlength:10,
            			maxlength:10,
            			numberOnly:true
            		}
            		
            		
            	},
            	messages:{
            		location:{
            			required: "please Provide valid location",
            			minlength:"should be minimum 3 letters"
            		},
            		Hname:{
            			required: "please Provide valid Hospital",
            			minlength:"should be minimum 3 letters"
            		},
            		BranchLocation:{
            			required: "please Provide valid Branch",
            			minlength:"should be minimum 3 letters"
            		},
            		patientTitle:{
            			required:"Select Salutaion"
            		},
            		firstName:{
            			required:"Enter Your Name"
            		},
            		SearchParentcontact:{
            			minlength:"Must be only 10 digits",
            			maxlength:"Must be only 10 digits"
            		},
            		"guardian.firstName":{
            			minlength:"Atleast 3 characters"
            		},
            		"guardian.middleName":{
            			minlength:"Atleast 3 characters"
            		},
            		"guardian.lastName":{
            			minlength:"Atleast 3 characters"
            		},
            		"guardian.mobileNumber1":{
            			minlength:"Must be only 10 digits",
            			maxlength:"Must be only 10 digits"
            		},
            		"guardian.mobileNumber2":{
            			minlength:"Must be only 10 digits",
            			maxlength:"Must be only 10 digits"
            		},
            		mobileNumber1:{
            			required:"Please provide your Mobile No",
            			minlength:"Must be only 10 digits",
            			maxlength:"Must be only 10 digits"
            		},
            		mobileNumber2:{
            			minlength:"Must be only 10 digits",
            			maxlength:"Must be only 10 digits"
            		},
            		landlineNumber1:{
            			required:"Please provide your Landline No",
            			minlength:"Must be between 9 or 10 digits",
            			maxlength:"Must be between 9 or 10 digits"
            		},
            		landlineNumber2:{            			
            			minlength:"Must be between 9 or 10 digits",
            			maxlength:"Must be between 9 or 10 digits"
            		},
            		emailId1:{
            			required:"please provide your emailId"
            		},
            		"currentAddress.address":{
            			required:"please provide your current Address",
            			minlength:"Atleast 5 digits"
            		},
            		"currentAddress.landmark":{
            			required:"landmark is required",
            			minlength:"atleast 3 characters"
            		},
            		"currentAddress.city":{
            			required:"please enter your current city",
            			minlength:"Atleast 3 characters"
            		},
            		"currentAddress.state":{
            			required:"please enter your current State",
            			minlength:"Atleast 3 characters"
            		},
            		"currentAddress.country":{
            			required:"please enter your current Country",
            			minlength:"Atleast 3 characters" 
            		},
            		"currentAddress.pincode":{
            			required:"please enter your current pincode",
            			minlength:"must be 6 digits" ,
            			maxlength:"must be 6 digits" 
            		},
            		"permanentAddress.address":{
            			required:"please provide your current Address",
            			minlength:"Atleast 5 digits"
            		},
            		"permanentAddress.landmark":{
            			required:"landmark is required",
            			minlength:"atleast 3 characters"
            		},
            		"permanentAddress.city":{
            			required:"please enter your current city",
            			minlength:"Atleast 3 characters"
            		},
            		"permanentAddress.state":{
            			required:"please enter your current State",
            			minlength:"Atleast 3 characters"
            		},
            		"permanentAddress.country":{
            			required:"please enter your current Country",
            			minlength:"Atleast 3 characters" 
            		},
            		"permanentAddress.pincode":{
            			required:"please enter your current pincode",
            			minlength:"must be 6 digits" ,
            			maxlength:"must be 6 digits" 
            		},
            		contact:{
            			minlength:"must be 10 digits" ,
            			maxlength:"must be 10 digits"
            		},
            		referraltype:{
            			minlength:"Atlest 3 characters"
            		},
            		referralName:{
            			minlength:"Atlest 3 characters"
            		},
            		rbranch:{
            			minlength:"Atlest 3 characters"
            		}
            		
            		
            	
            		
            	},
            	submitHandler: function(form){
        			form.submit();
        		}
            });
            
            

            
        });
       
    </script>

</body>

</html>