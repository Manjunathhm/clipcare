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
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/dataTables.bootstrap.min.css" />' >
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/main.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/datepicker3.css" />' >
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/fullcalendar.css" />'>
		<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/stylesvitalbeat.css" />'>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
   
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
    </style>

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
                                <li>
                                    <a href="#"> </a>
                                </li>
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
            </div>
            <!-- /.container-fluid -->
        </nav>
          </header>
        <div class="container">
        <div class="row border_line">
            <div class="col-sm-12 col-md-12">
                <h3 class=""> Appointment Dashboard </h3>
            </div>
            </div>
 
       
          <div class="row">
          	<div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
	               	<table id="doctorsList" class="table  table-bordered table-hover borderpanel"> 
			            <thead >
			                <tr>
			                    <th class="text-center">Name</th>
								<th class="text-center">Contact</th>
								<th class="text-center">Email ID</th>
								<th class="text-center">Department</th>
								 <th class="text-center">working Days</th>
								 <th class="text-center">From</th>
								 <th class="text-center">To</th>
			                </tr>
			             </thead>
	                     <tbody>
						       <c:forEach var="doc" items="${doctors}" varStatus="status">
							       <tr>
							       
							        <%-- <c:url var="editUrl" value="form?doctorId=${doc.doctorId}"/> --%>
							
							        <td class="text-center">Dr. ${doc.firstName} ${doc.middleName } ${doc.lastName }</td>
							        <td class="text-center">${doc.mobileNumber1}</td>
							        <td class="text-center">${doc.emailId1}</td>
							        <td class="text-center">${doc.department}</td>
							        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.workingDays}</p></c:forEach></td>
							        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.fromTime}</p></c:forEach></td>
							        <td class="text-center"><c:forEach var="cp" items="${doc.shifts}"><p>  ${cp.toTime}</p></c:forEach></td>
							       
							        <%-- <td class="text-center" ><a href='<c:out value="${editUrl}" />'><i class="glyphicon glyphicon-pencil" style="color:#006699" data-toggle="tooltip" title="Edit"></i></a></td>
							        <td class="text-center"><a href='<c:out value="${deleteUrl}"/>'><i class="glyphicon glyphicon-trash" style="color:#c12e2a" data-toggle="tooltip" title="Delete"></i></a></td>
							         --%>
							       </tr>
						     	</c:forEach> 
						     </tbody>
	                   </table>
                    </div>  
                
                  </div>
              </div>
        
      </div>
    
      <%-- <f:form action="doctorsList" method="get" modelAttribute="doctors">
         
        <div class="row">
          <div class="col-sm-3 col-md-2">
                   <label class="control-label">Filter By: </label>                     
                </div>
                <div class="col-sm-4 col-md-5">
               <f:form modelAttribute="doctor">  
              
              <f:select id="filterSelect" class="form-control input-sm field_color caps"  path="">
             	<f:option value="">---Select One--- </f:option>
             	<f:options items="${departments}"/>
             </f:select>
             </f:form>
                </div>
         </div>
          <div class="row">
              <div class="tab-content">
            <div class="col-sm-12 col-md-12  height_margin" id="listAss">
               <div class="col-sm-12 col-md-12 table-responsive begin-top">
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
                 <div class="tab-content">
                            <table class="table  table-bordered table-hover" id="">    
                                <thead>
                                    <th class="widthName" >Doctor</th>
                                </thead>
                                
                                <c:forEach var="cat" items="${doctors}" varStatus="status"> 
                                    <tr>
                                    <td class="text-center">${cat.firstName}</td>
                                    <td> ${cat.mobileNumber1}</td>
                                    <td> ${cat.department}</td>
                                    </tr>
                                    </c:forEach>
                                    </table>
                             
                                             </div> 
            </div>
   </div>  
                
                  </div>
              </div>
          </div>
      </f:form> --%>
        
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/date.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/moment.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/fullcalendar.min.js"/>'></script>
    
    <script src='js/gcal.js'></script>
    <script>
        var lowerdays;
       /*  var DoctorsDetails={
           "generalPractitioner":{
               
             "drg001":  {
                   
                    "name":"Dr. Rajitha",
                    "age":"23",
                    "sex":"F",
                    "qualification":"MBBS",
                    "designation":"Duty Doctor",
                    "days":["Mon","Tue","Wed"],
                    "timef":"09:30 am",
                    "timet":"04:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               },
              "drg002": {
                   
                    "name":"Dr. Bharadwaj",
                    "age":"23",
                    "sex":"M",
                    "qualification":"MBBS",
                    "designation":"Duty Doctor",
                    "days":["Thu","Fri","Sat"],
                    "timef":"10:30 am",
                    "timet":"02:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               },
             "drg003":  {
                   
                    "name":"Dr. Kotesh",
                    "age":"25",
                    "sex":"M",
                    "qualification":"MBBS",
                    "designation":"Duty Doctor",
                    "days":["Sun","Thu","Sat"],
                    "timef":"09:30 am",
                    "timet":"01:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               }
               
       },
           "physician":{
               "drp001":
               {
                    "name":"Dr. Dwarkanath",
                    "age":"55",
                    "sex":"M",
                    "qualification":"MBBS, DIP, CAR",
                    "designation":"General Physician",
                    "days":["Mon","Tue","Wed","Thu","Fri","Sat"],
                    "timef":"11:00 am",
                    "timet":"05:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               },
              "drp002":  {
                    
                    "name":"Dr. Madhu Muddaiah",
                    "age":"35",
                    "sex":"M",
                    "qualification":"MBBS,MD",
                    "designation":"Consultant Physican",
                    "days":["Mon","Tue","Wed","Thu","Fri","Sat"],
                    "timef":"02:30pm",
                    "timet":"08:30pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               },
              "drp003": {
                    
                    "name":"Dr. Arvind",
                    "age":"35",
                    "sex":"M",
                    "qualification":"MBBS,MD",
                    "designation":"Consultant Physican",
                    "days":["Mon","Tue","Wed","Thu","Fri","Sat"],
                    "timef":"10:30 am",
                    "timet":"03:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
               }   
       },
           "cardiology":{
              "drc001": {
                   
                    "name":"DR.Yeriswami",
                    "age":"35",
                    "sex":"M",
                    "qualification":"MD, DNB, DM",
                    "designation":"CONSULTANT INTRAVENTIONAL CARDIOLOGIST",
                    "days":["Mon","Tue","Wed","Thu","Fri","Sat"],
                    "timef":"11:30 am",
                    "timet":"08:30 pm",
                    "slots":["1","2","3","4","5","6","7","8"]
                   
               }
           }
       
       
       }; */
        var thDays=["Mon","Tue","Wed","Thu","Fri","Sat","Sun"];
        var count=0;
        var newDate;
        var prevCount=0;
        var htmlgen="";
        var htmlphy="";
        var htmlcty="";        
        var doc;
        var dateCount=0
        var dateString = '11 Jan 2016'; // date string
        var actualDate = new Date(dateString); // convert to actual date
       
           $(document).ready(function() { 
        	   $("#doctorsList").dataTable();
               $('[data-toggle="tooltip"]').tooltip();  
               $("#previousbtn").click(function(){
                   count=0;
                     dateCount=0; 
                     newDate= new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()-7);
                     actualDate=newDate;
                     console.log(newDate);
                     for(var i =0;i<thDays.length;i++){                
                    // console.log(thDays[count]);
                   newDate  = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date
                         
        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                 //console.log(newDateString);  
                         
                         $("#"+thDays[count]+"gen").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                         $("#"+thDays[count]+"phy").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                         $("#"+thDays[count]+"cty").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                   
                         
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
                     for(var i =0;i<thDays.length;i++){                
                    // console.log(thDays[count]);
                   newDate  = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date
                         
        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                 //console.log(newDateString);  
                         
                         $("#"+thDays[count]+"gen").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                         $("#"+thDays[count]+"phy").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                         $("#"+thDays[count]+"cty").empty().append(""+thDays[count]+"<br>"+newDateString+"");
                   
                         
                        count++;
                        dateCount++;
                }
                    
                   
        });
                DateandTh(actualDate);
                tableData();
            });
        function DateandTh(actualDate){
            console.log("this is first time actualDate"+actualDate);
            for(var i =0;i<thDays.length;i++){
                    // console.log(thDays);
                    // console.log(thDays[count]);
                   newDate = new Date(actualDate.getFullYear(), actualDate.getMonth(),     actualDate.getDate()+dateCount); // create new increased date

        // now extract the bits we want to crete the text version of the new date..
                    var newDateString = ('0'+newDate.getDate()).slice(-2) + ' ' + newDate.toDateString().slice(4,7) + ' ' + newDate.getFullYear();
                
                    htmlgen +="<th id='"+thDays[count]+"gen' class='daysWidth'>"+thDays[count]+"<br>"+newDateString+"</th>";
//                 
                    htmlphy +="<th id='"+thDays[count]+"phy' class='daysWidth'>"+thDays[count]+"<br>"+newDateString+"</th>";
                htmlcty +="<th id='"+thDays[count]+"cty' class='daysWidth'>"+thDays[count]+"<br>"+newDateString+"</th>";
                   
                    count++;
                    dateCount++;
                }
               
                   $("#table_generalDoctors tr:last").append(htmlgen);
                   $("#table_physician tr:last").append(htmlphy);
                   $("#table_doctor_cardiology tr:last").append(htmlcty);
            
            
        };
              function tableData(){
                    $.each(DoctorsDetails["generalPractitioner"], function(key, value){
                         lowerdays  = value.days;
                         doc= value.name;
                        
                    $("#table_generalDoctors").append("<tr><td><span class='docName'>" + value.name +"</span>\t,<span class='docQualification'>"+ value.qualification +"</span><br><span class='docDetails'>"+value.sex +"\t,"+value.age+"\t,"+value.designation  +"</span><br><span class='daysColor'>"+value.days+"</td></tr>");
                        for(var i=0; i<thDays.length;i++){
                            $("#table_generalDoctors tr:last").append("<td id='"+key+thDays[i]+"' class='tdStyle'></td>");
                        }
                        var count1=0;
                  
                       for(var j=0;j<lowerdays.length;j++){                          
                          // console.log( $(key+lowerdays[j]));
                           $("#"+key+lowerdays[j]).append(value.timef,"<br>To<br>",value.timet,"<br>");
                           count1++; 
                           for(var s=0; s<=20;s++){
                             $("#"+key+lowerdays[j]).append("<span class='slotBar' id='slotGen"+s+lowerdays[j]+key+"' data-toggle='tooltip' title='slot\t"+s+"'></span>");
                        }
                           s=["2","4","7","13","18"];
                           console.log(s);
                           for(var bs=0;bs<s.length;bs++){
                               $("#slotGen"+s[bs]+lowerdays[j]+key).css("border-right","4px solid red");
                           }
                       }
                        
                        var diff= thDays.filter(function(val){
                            return lowerdays.indexOf(val)== -1;
                        });
                        // console.log(diff);
                        for(var d=0;d<diff.length;d++){
                            // console.log($(key+diff[d]));
                            $("#"+key+diff[d]).append("<span class='holiday'>Holiday</span>")
                        }
                        
                    }); 
               $.each(DoctorsDetails["physician"], function(key, value){
                   lowerdays  = value.days;
                         doc= value.name;
                    $("#table_physician").append("<tr><td><span class='docName'>" + value.name +"</span>\t,<span class='docQualification'>"+ value.qualification +"</span><br><span class='docDetails'>"+value.sex +"\t,"+value.age+"\t,"+value.designation  +"</span><br><span class='daysColor'>"+value.days+"</td></tr>");
                   
                   for(var i=0; i<thDays.length;i++){
                            $("#table_physician tr:last").append("<td id='"+key+thDays[i]+"' class='tdStyle'></td>");
                        }
                    var count1=0;
                  
                        for(var j=0;j<lowerdays.length;j++){                          
                          // console.log( $(key+lowerdays[j]));
                           $("#"+key+lowerdays[j]).append(value.timef,"<br>To<br>",value.timet,"<br>");
                           count1++; 
                           for(var s=0; s<=20;s++){
                             $("#"+key+lowerdays[j]).append("<span class='slotBar' id='slotPhy"+s+lowerdays[j]+key+"' data-toggle='tooltip' title='slot\t"+s+"'></span>");
                        }
                             s=["2","4","7","13","18"];
                           console.log(s);
                           for(var bs=0;bs<s.length;bs++){
                               $("#slotPhy"+s[bs]+lowerdays[j]+key).css("border-right","4px solid red");
                           }
                       }
                        var diff= thDays.filter(function(val){
                            return lowerdays.indexOf(val)== -1;
                        });
                        // console.log(diff);
                        for(var d=0;d<diff.length;d++){
                            // console.log($(key+diff[d]));
                            $("#"+key+diff[d]).append("<span class='holiday'>Holiday</span>")
                        }
                   
                    }); 
                 $.each(DoctorsDetails["cardiology"], function(key, value){
                     lowerdays  = value.days;
                         doc= value.name;
                    $("#table_doctor_cardiology").append("<tr><td><span class='docName'>" + value.name +"</span>\t,<span class='docQualification'>"+ value.qualification +"</span><br><span class='docDetails'>"+value.sex +"\t,"+value.age+"\t,"+value.designation  +"</span><br><span class='daysColor'>"+value.days+"</td></tr>");
                     for(var i=0; i<thDays.length;i++){
                            $("#table_doctor_cardiology tr:last").append("<td id='"+key+thDays[i]+"' class='tdStyle'></td>");
                        }
                      var count1=0;
                  
                        for(var j=0;j<lowerdays.length;j++){                          
                          // console.log( $(key+lowerdays[j]));
                           $("#"+key+lowerdays[j]).append(value.timef,"<br>To<br>",value.timet,"<br>");
                           count1++; 
                           for(var s=0; s<=20;s++){
                             $("#"+key+lowerdays[j]).append("<span class='slotBar' id='slotCardio"+s+lowerdays[j]+key+"' data-toggle='tooltip' title='slot\t"+s+"'></span>");
                        }
                             s=["2","4","7","13","18"];
                           console.log(s);
                           for(var bs=0;bs<s.length;bs++){
                               $("#slotCardio"+s[bs]+lowerdays[j]+key).css("border-right","4px solid red");
                           }
                       }
                        var diff= thDays.filter(function(val){
                            return lowerdays.indexOf(val)== -1;
                        });
                        // console.log(diff);
                        for(var d=0;d<diff.length;d++){
                            // console.log($(key+diff[d]));
                            $("#"+key+diff[d]).append("<span class='holiday'>Holiday</span>")
                        }
                     
                                         
                    });
            };
  
        
         $('ul.nav li.dropdown').hover(function () {

            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
       
    
    </script>
  
    </body>
</html>

    