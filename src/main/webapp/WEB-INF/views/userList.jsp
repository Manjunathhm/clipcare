<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<form:form action="http://localhost:8080/LoginMavenSpringMVC/secured/register" method="post" modelAttribute="userForm">
    <div align="center">
        <table border="0">
            <tr>
                <td colspan="2" align="center"><h2>Registration Succeeded!</h2></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <h3>Thank you for registering! Here's the review of your details:</h3>
                </td>
            </tr>
            <tr>
                <td>User Name:</td>
                <td>${userForm.userName}</td>
            </tr>
            <%-- <tr>
                <td>E-mail:</td>
                <td>${user.email}</td>
            </tr>
            <tr>
                <td>Birthday:</td>
                <td>${userForm.birthDate}</td>
            </tr>
            <tr>
                <td>Profession:</td>
                <td>${userForm.profession}</td>
            </tr>
  --%>
        </table>
    </div></form:form>
</body>
</html>