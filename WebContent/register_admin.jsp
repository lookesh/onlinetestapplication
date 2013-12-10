<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
 <script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
	
</script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.10.0/jquery.validate.js"
	type="text/javascript">
	
</script>
<script>
	$(document).ready(function() {
		$("#register").click(function() {
			var username = $("#txtUsername").val();
			var password = $("#txtPassword").val();
			var characterReg = /^\s*[a-zA-Z,\s]+\s*$/;
			if (username == "") {
				$("#error").text("Empty username").show();
			}
			if (password == "") {
				$("#error2").text("Empty password").show();
			}
			if (!characterReg.test(username)) {
				alert("no special characters allowed");
			}
		});
	});
</script>
</head>
<body>
	<s:form action="registerAdmin.action" method="post">
		<table>
			<tr>
				<td><h3>Register here:</h3></td>
			</tr>
			<tr>
				<td><div id="errorLabel"></div></td>
			</tr>
			<tr>
				<td><s:textfield id="txtUsername" label="Enter username"
						name="user.username" /></td>
			</tr>
			<tr>
				<td><s:password id="txtPassword" label="Enter password"
						name="user.password" /></td>
			</tr>
			<tr>
				<td><s:password id="txtConfirmPassword"
						label="Confirm password" name="user.password" /></td>
			</tr>
			<tr>
				<td></td><td><input type ="submit" value="Register" id="register" name="btnRegister" />
				&nbsp&nbsp&nbsp<input
					type="reset" name="btnReset" value="Reset" /></td>
			</tr>

		</table>
	</s:form>
</body>
</html>