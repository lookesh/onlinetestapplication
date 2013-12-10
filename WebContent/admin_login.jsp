<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	
</script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.js"
	type="text/javascript">
	
</script>
<script>
	$(document).ready(function() {
		$("#login").click(function() {
			var username = $("#username").val();
			var password = $("#password").val();
			var characterReg = /^\s*[a-zA-Z0-9,\s]+\s*$/;
			if (username == "") {
				$("#error").text("Empty username").show();

			}
			if (password == "") {
				$("#error2").text("Empty password").show();
			}
			if (!characterReg.test(password)) {
				alert("no special characters allowed");
			}
		});
	});
</script>
</head>
<body>
	<s:form action="adminLogin" method="post" id="myForm">
		<table>
			<tr>
				<td>Username:<s:textfield name="user.username" id="username" /></td>
			</tr>
			<tr>
				<td><div id="error"></div></td>
			</tr>
			<tr>
				<td>Password:<s:password name="user.password" id="password" /></td>
			</tr>
			<tr>
				<td><div id="error2"></div></td>
			</tr>
			<tr>
				<td><s:submit value="login" id="login" /></td>
			</tr>
		</table>
	</s:form>
	<s:a href="register_user.jsp">Register</s:a>
</body>
</html>