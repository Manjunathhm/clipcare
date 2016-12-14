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
    <div align="center">
        <form:form action="saveUser" method="post" commandName="userForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>New User Registration</h2></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><form:input path="userName" /></td>
                </tr>
                
                <tr>
                    <td>Password:</td>
                    <td><form:password path="password" /></td>
                </tr>
                
              <tr>
                    <td>Account Non Expired:</td>
                    <td>Y<form:radiobutton path="accountNonExpired" value="true"/>
                    	<form:radiobutton path="accountNonExpired" value="false"/>N
                    </td>                    
                </tr>
                
                <tr>
                    <td>Account Non Locked:</td>
                    <td>Y<form:radiobutton path="accountNonLocked" value="true"/>
                    	<form:radiobutton path="accountNonLocked" value="false"/>N
                    </td>                    
                </tr>
                
                <tr>
                    <td>Credentials Non Expired:</td>
                    <td>Y<form:radiobutton path="credentialsNonExpired" value="true"/>
                    	<form:radiobutton path="credentialsNonExpired" value="false"/>N
                    </td>                    
                </tr>
                
                <tr>
                    <td>Enabled:</td>
                    <td>Y<form:radiobutton path="enabled" value="true"/>
                    	<form:radiobutton path="enabled" value="false"/>N
                    </td>                    
                </tr>
               
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Register" /></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>