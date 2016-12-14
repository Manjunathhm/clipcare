<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

<form><i class="glyphicon glyphicon-user"><%= request.getUserPrincipal() == null ? "Guest": request.getUserPrincipal().getName() %></i><br>
Admin Dashboard<br>

<input type="button" value="User Registration"/><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/category/form'" value="Referral Registration" ><br>
<br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/doctor/form'" value="Doctor Registration"><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/patient/form'" value="Patient Registration"><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/appointment/form'"  value="Book Appointment"/><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/billing/form'"  value="Billing Masters"/><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/department/form'"  value="Department Masters"/><br><br>
<!-- <input type="button" onclick="window.location='/LoginMavenSpringMVC/demo/AddUser'"  value="Demo"/><br><br>
<input type="button" onclick="window.location='/LoginMavenSpringMVC/'"  value="JsonDemo"/><br><br> -->


<input type="button" value="List of All">
<a href="/LoginMavenSpringMVC/">Logout</a>
</form>
</body>
</html>