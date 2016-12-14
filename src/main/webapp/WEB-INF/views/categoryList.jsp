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
List of Categories
<table>
					<thead>
						<tr>
							<th>Category Type</th>
							<th>Category Name</th>
							<th>Category Branch</th>
							<th>Contact</th>
							<th>Email ID</th>
							<th>Contact Person</th>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cat" items="${categories}" varStatus="status">
							<tr>
							  <%--   <c:url var="editUrl" value="edit?categoryId=${cat.categoryId}"/>
								<c:url var="deleteUrl" value="delete?categoryId=${cat.categoryId}"/>
 --%>
								<td>${cat.categoryType}</td>
								<td>${cat.categoryName}</td>
								<td>${cat.categoryBranch}</td>
								<td>${cat.mobileNumber}</td>
								<td>${cat.categoryEmailID1}</td>
								<c:forEach var="cp" items="${cat.contactPersons}" varStatus="st">
								<td><c:if test="${cp != null}">
								${cp.contactPersonName}</c:if></td><tr></tr>
								
								</c:forEach>
								
		<td class="text-center"><a href="edit?categoryId=${cat.categoryId}"><i class="glyphicon glyphicon-pencil" style="color:#006699" data-toggle="tooltip" title="Edit"></i></a></td>
        <td class="text-center"><a href="delete?categoryId=${cat.categoryId}"><i class="glyphicon glyphicon-trash" style="color:#c12e2a" data-toggle="tooltip" title="Delete"></i></a></td>
 							
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
</body>
</html>