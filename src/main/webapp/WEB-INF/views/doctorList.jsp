<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
List of Doctors
<table>
					<thead>
						<tr>
							<th>First Name</th>
							<th>Contact</th>
							<th>Email ID</th>
							<th>City</th>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="doctor" items="${doctors}" varStatus="status">
							
							<tr>
														
								<%-- <c:url var="deleteUrl" value="/patient/delete/${pat.patientId}"/> --%>
															
								<td>${doctor.firstName}</td>
								<td>${doctor.mobileNumber1}</td>
								<td>${doctor.emailId1}</td>
								
 								<td><a href="edit?doctorId=${doctor.doctorId}">Edit</a></td>
								
								<%-- <td><a href='<c:out value="${deleteUrl}"/>'>Delete</a></td> --%>
								
							</tr>
						</c:forEach>
						
					</tbody>
					
				</table>
</body>
</html>