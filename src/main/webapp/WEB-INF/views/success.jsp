<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE Html>
<html lang="en">
<title>Aventyn&reg;| Register</title>
    <head>
        <link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/bootstrap.min.css" />' >
        <link type="text/css"  rel="stylesheet" href='<spring:url value="/resources/css/loginCSS.css" />'>
       
        
       
    </head>
    <body>
        <div class="container-fluid">
            <form action="http://localhost:8080/LoginMavenSpringMVC/Register/save" method="post">
            <div class="row margin_Div">
                <div class="col-sm-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Registration</strong></h2>
                        </div>
                        <div class="panel-body">  
                            <div class="row">
                                <div class="col-sm-3 col-md-2">
                                    <b>First Name:</b>
                                </div>
                                <div class="col-sm-4 col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">*</span>
                                        <input type="text" class="form-control input-sm" placeholder="first name" name="firstname">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 col-md-2">
                                    <b>Last Name:</b>
                                </div>
                                <div class="col-sm-4 col-md-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">*</span>
                                        <input type="text" class="form-control input-sm" placeholder="last name" name="lastname">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 col-md-2"></div>
                                <div class="col-sm-4 col-md-3">
                                    <button class="form-control btn-sm btn-primary" type="submit">Save</button>
                                    </div>
                                </div>
                                <div class="row">
                                <div class="col-sm-12">
                                	<p>${saveMsg}</p>
                                </div>
                                </div>
                            </div>
                        </div>
	              </div>
	              </div>
            </form>
            </div>
            
        
    </body>
    <script type="text/javascript" src='<spring:url value=" /resources/js/jquery.min.js"/>'></script>
    <script type="text/javascript" src=' <spring:url value="/resources/js/bootstrap.min.js"/>'></script>
</html>