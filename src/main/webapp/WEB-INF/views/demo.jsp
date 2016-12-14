<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                               
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hospital Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="registration.html">Doctor Registration</a></li>
                               
                                <li>
                                    <a href="#"></a>
                                </li>
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

   <f:form class="form-horizontal" id="registrationform" action="success" method="post" modelAttribute="doctor">

		 <div class="container data">
				
            <div id="doctor">
                <div class="row begin-top">
				<f:hidden path="doctorId"/>                             
 
				             
                    <div class="col-sm-6 col-md-2">
                        <label class="control-label" for="Name">Name :</label>
                    </div>                    
                    					                 
					<%-- <f:input path="demoDate" type="text"/> 
                   
                    <div class="col-sm-2 col-md-2">
                        <f:input type="number" class="form-control input-sm field_color" path="demoAge" placeholder="Demo Age"/>
                    </div>
                    
                 <tr> <td>  <f:input type="number" class="form-control input-sm field_color" path="demoMobileNumber" placeholder="Mobile Number"/></td>
						<td style="color:red;"><f:errors path="demoMobileNumber" cssClass="error"/></td></tr> --%>
            <div class="row buttons">
                <div class="col-sm-12 col-md-12 text-center">
                    <button class="btn btn-default button" id="save" type="submit">Save</button>
                    <button class="btn btn-default button" id="reset">Reset</button>
                </div>
            </div>
</div>


        </div>
    </f:form>
    
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.dataTables.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/dataTables.bootstrap.min.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/jquery.validate.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-switch.js"/>'></script>
    <script type="text/javascript" src='<spring:url value="/resources/js/bootstrap-datepicker.js"/>'></script>
    

    <script>
        $('ul.nav li.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });
    </script>
    
    <script type="text/javascript">
	$(document).ready(function(){
	
		$("#demoDate").datepicker({
            alert:("datepicker"),
			autoclose: true,        
            format: 'mm/dd/yyyy',
            endDate: new Date()
           });
		
	$("#teamform").change(function(){
        $(this).find("option:selected").each(function(){
            if($(this).attr("value")=="dri"){
                
                $("#qualifications").hide();
                $("#driverqualification").show();
                $("#sstaff").hide();
            }
              else if($(this).attr("value")=="sup"){
               
                $("#sstaff").show();
                   $("#driverqualification").hide();
                $("#qualifications").hide();
            }
            else{
                $("#qualifications").show();
                 $("#driverqualification").hide();
                $("#sstaff").hide();
            }
           
        });
    }).change();
});
</script>
 
</body>

</html>
 