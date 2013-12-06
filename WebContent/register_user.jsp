<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<form action="registerUser" method="post">
<table>
<tr><td><h1>Register here:</h1></td></tr>
<tr>
				<td>Enter first name:<input type="text" name="user.firstName" /></td>
			</tr>
			<tr>
				<td>Enter last name:<input type="text" name="user.lastName" /></td>
			</tr>
			<tr>
				<td>Enter username:<input type="text" name="user.username" /></td>
			</tr>
			<tr>
				<td>Enter Password:<input type="text" name="user.password" /></td>
			</tr>
			<tr>
				<td>Date of Birth:<input type="date" name="user.dob" /></td>
			</tr>
			<tr>
				<td>Enter Contact No.:<input type="text" name="user.contactNo" /></td>
			</tr>
			<tr>
				<td>Enter your email id:<input type="text" name="user.emailId" /></td>
			</tr>
			<tr>
				<td>Gender:<s:radio list="#{'Male':'Male','Female':'Female'}" name="user.gender"/></td>
			</tr>
			<TR>
				<td>Address:<textarea rows="1" cols="16" name="user.address"></textarea></td>
			</TR>
			<TR>
				<td>City:<select name="user.city">
						<option value="delhi">delhi
						<option value="chandigarh">chandigarh
				</select></td>
			</TR>
			<TR>
				<td>Country:<select name="user.country">
						<option value="usa">usa
						<option value="uk">uk
						<option value="india">india
				</select></td>
			</TR>
			<tr>
				<td>Pin code:<input type="text" name="user.pinCode" /></td>
			</tr>
		<tr>
			<td><input type="submit" value="submit" /></td>
		</tr>
</table>
</form>
</body>
</html>