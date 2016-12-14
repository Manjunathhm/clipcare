<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE Html>
<html lang="en">
<title>Aventyn| Login</title>
<head>

</head>
<body>
	<div>
					<c:if test="${not empty error}">
						<tr>
							<td>
								<div class="tel">
									Invalid Username or Password
								</div>
							</td>
						</tr>
					</c:if>
		<form id="f" name="f"
			action="/LoginMavenSpringMVC/j_spring_security_check" method="post">
			<h2>Username</h2>
			<input tabindex="1" id="j_username" name='j_username'
				type="text" value="" onblur="if(this.value==''){this.value='';}"
				onfocus="if(this.value==''){this.value='';}" /><br /> <br />
			<h2>Password</h2>
			<input tabindex="2" name='j_password' type="password"
				value="" onblur="if(this.value==''){this.value='';}"
				onfocus="if(this.value==''){this.value='';}" /><br /> <br />
			<input type="submit" value="Logon" name="Logon">
		</form>
	</div>

</body>
</html>