<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Add Users using ajax</title>
        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
       
        jQuery(document).ready(
      	function($) {

      		$("#demoData").submit(function(event) {
				alert("Method Called.");
				var v1=$("#name1").val();
				alert(v1);
      			var content = {}
      			content["name"] = $("#name1").val();
      			content["education"] = $("#education1").val();
      			//$("#demoData").prop("disabled", true);
				alert("Data Name "+content["name"]);
      			$.ajax({
      		             type: "POST",
      		             contentType: "application/json",
      		             url: "/LoginMavenSpringMVC/demo/AddUser",
      		             data: JSON.stringify(content),
      		             dataType: 'json',
      		             timeout: 600000,
      		             success: function (data) {
      		            	 alert("Success..");
      		                //$("#demoData").prop("disabled", false);
      		                 //...
      		             },
      		             error: function (e) {
      		            	 alert("Failed");
      		            	 alert(content);
      		                 $("#demoData").prop("disabled", false);
      		                 //...
      		             }
      			});


      		});

      	});
        
        </script>
    </head>
    <body>
        <h1>Add Users using Ajax ........</h1>
        <form id="demoData" modelAttribute="demo">
        <table>
            <tr><td>Enter your name : </td><td> <input type="text" id="name1" name="name"><br/></td></tr>
            <tr><td>Education : </td><td> <input type="text" id="education1" name="education"><br/></td></tr>
            <tr><td colspan="2"><button type="submit" value="Add Users">Save</button><br/></td></tr>
            <tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
        </table>
        </form>
        <a href="/LoginMavenSpringMVC/demo/ShowUsers">Show All Users</a>
    </body>
</html>
