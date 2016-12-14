<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8080/LoginMavenSpringMVC/secured/test" method="post">
            <div class="row margin_Div">
                <div class="col-sm-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="panel-title text-center"><strong>Home Page</strong></h2>
                        </div>             
                            
                                <div class="row">
                                <div class="col-sm-12">
                                	<p>${user.username}</p>
                                </div>
                                </div>
                            </div>
                        </div>
	              </div>
	              <a href="newUser">Create New User</a>
            </form>
Hello Home page....
</body>
</html>